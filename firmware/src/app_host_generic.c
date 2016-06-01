#include "usb.h"
#include "usb_host_generic.h"

#include <stdint.h>
#include <stdbool.h>
#include "system.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <pb_encode.h>
#include <pb_decode.h>
#include <pb_remote_usb.pb.h>

// *****************************************************************************
// *****************************************************************************
// Type definitions
// *****************************************************************************
// *****************************************************************************

typedef enum _APP_STATE
{
    DEVICE_NOT_CONNECTED,
    DEVICE_CONNECTED,
    DEVICE_READY,
    WAITING_FOR_DEVICE,
    ERROR_REPORTED
} DEV_STATE;

typedef enum _APP_VOC_READ_STATE
{
    DONE,
    STARTED,
    
} VOC_READ_STATE;


typedef struct
{
    DEV_STATE state;
    VOC_READ_STATE vocState;
    
    uint16_t size;
    uint16_t pollRate;
    uint8_t address;
    GENERIC_DEVICE_ID *dev_id;

} DEV;


// *****************************************************************************
// *****************************************************************************
// Local Variables
// *****************************************************************************
// *****************************************************************************

static DEV dev;

// *****************************************************************************
// *****************************************************************************
// Local Function Prototypes
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
// *****************************************************************************
// Functions
// *****************************************************************************
// *****************************************************************************



/*********************************************************************
* Function: void APP_HostGenericInitialize(void);
*
* Overview: Initializes the app code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_HostGenericInitialize()
{
    dev.state = DEVICE_NOT_CONNECTED;
    dev.address = 0;
    dev.dev_id = NULL;
}

/*********************************************************************
* Function: void APP_HostGenericTasks(void);
*
* Overview: Keeps the aoo running.
*
* PreCondition: The demo should have been initialized via
*   the APP_HostGenericInitialize()
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_HostGenericTasks()
{
    uint8_t error;
    uint8_t count;
    uint8_t i;
    char strBuf[USB_GENERIC_MAX_SERIAL_NUMBER];   
    
    switch(dev.state)
    {
        case DEVICE_NOT_CONNECTED:
            PRINT_ClearScreen();
            PRINT_String("Attach dev\r\n", 12);
            dev.state = WAITING_FOR_DEVICE;
            break;

        case WAITING_FOR_DEVICE:
            break;

        case DEVICE_CONNECTED:
            PRINT_ClearScreen();
            PRINT_String("Attached\r\n", 10);

            memset(strBuf,0,USB_GENERIC_MAX_SERIAL_NUMBER);
            PRINT_String("Adr: 0x", 7);
            itoa(strBuf, dev.address, 16);
            PRINT_String(strBuf, USB_GENERIC_MAX_SERIAL_NUMBER);
            PRINT_String("\r\n", 2);

            memset(strBuf,0,USB_GENERIC_MAX_SERIAL_NUMBER);
            PRINT_String("Vid: 0x", 7);
            itoa(strBuf, dev.dev_id->vid, 16);
            PRINT_String(strBuf, USB_GENERIC_MAX_SERIAL_NUMBER);
            PRINT_String("\r\n", 2);

            memset(strBuf,0,USB_GENERIC_MAX_SERIAL_NUMBER);
            PRINT_String("Pid: 0x", 7);
            itoa(strBuf, dev.dev_id->pid, 16);
            PRINT_String(strBuf, USB_GENERIC_MAX_SERIAL_NUMBER);
            PRINT_String("\r\n", 2);
            
            #ifdef USB_GENERIC_SUPPORT_SERIAL_NUMBERS
            memset(strBuf,0,sizeof(USB_GENERIC_MAX_SERIAL_NUMBER));
            if (dev.dev_id->serialNumber != NULL) {
                for (i = 0; i < dev.dev_id->serialNumberLength; i++) {
                    strBuf[i] = (uint8_t)(0x00FFul & dev.dev_id->serialNumber[i]);
                }
                PRINT_String(strBuf ,dev.dev_id->serialNumberLength);
            }
            #endif
            dev.state = DEVICE_READY;
            break;

        case DEVICE_READY:
            break;


        case ERROR_REPORTED:
            break;

        default:
            break;

    }
}


bool APP_HostGenericAttachEvent ( uint8_t address, GENERIC_DEVICE_ID *dev_id ) {
    dev.address = address;
    dev.state = DEVICE_CONNECTED;
    dev.dev_id = dev_id;
    
    return true;
}

bool APP_HostGenericDetachEvent ( uint8_t address ) {
    dev.address = 0;
    dev.state = DEVICE_NOT_CONNECTED;
    dev.dev_id = NULL;
    
    return true;
}

bool APP_HostGenericTxDoneEvent ( uint8_t address, uint32_t dataLength ) {
    if (dev.address != 00 && dev.address == address) {
        //TODO
        return true;
    } 
    
    return false;
}

bool APP_HostGenericRxDoneEvent ( uint8_t address, uint32_t dataLength ) {
    if (dev.address != 00 && dev.address == address) {
        //TODO
        return true;
    } 
    
    return false;
}

/*
void APP_ReadSensorData() {
	char buf[40];
    unsigned short iresult=0;
	unsigned short voc=0;
	
    switch (dev.vocState) {
        case DONE:
            break;

        case STARTED:
            usb_interrupt_read(devh, 0x00000081, buf, 0x0000010, 1000);
            
            break;

        case STARTED_WAIT:
            dev.vocState=STARTED_WAIT;
            break;
        case WRITE_1: 

            // USB COMMAND TO REQUEST DATA
            // @h*TR
            memcpy(buf, "\x40\x68\x2a\x54\x52\x0a\x40\x40\x40\x40\x40\x40\x40\x40\x40\x40", 0x0000010);
            usb_interrupt_write(devh, 0x00000002, buf, 0x0000010, 1000);

            dev.vocState=WRITE_1_WAIT;
            break;
 
        case WRITE_1_WAIT:
            
        case READ_1:

            usb_interrupt_read(devh, 0x00000081, buf, 0x0000010, 1000);

            sleep(1);

            ret = usb_interrupt_read(devh, 0x00000081, buf, 0x0000010, 1000);

            #ifdef DEBUG_MODE
                UART2PrintString("DEBUG: Return code from USB read: ", ret);
            #endif

            memcpy(&iresult,buf+2,2);
            voc = __le16_to_cpu(iresult);

            sleep(1);

            #ifdef DEBUG_MODE
                UART2PrintString("DEBUG: Read USB [flush]", 0);
            #endif

            usb_interrupt_read(devh, 0x00000081, buf, 0x0000010, 1000);

            #ifdef DEBUG_MODE
                UART2PrintString("DEBUG: Return code from USB read: ", ret);
            #endif

            // According to AppliedSensor specifications the output range is between 450 and 2000
            // So only UART2PrintString values between this range

            if ( voc >= 450 && voc <= 2001) {
                    printf("%d\n", voc);
            } else {
                    printf("0\n");
            }	
    }
}
*/
