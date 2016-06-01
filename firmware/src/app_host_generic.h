#include "usb_host_generic.h"

/*********************************************************************
* Function: void APP_HostGenericInitialize(void);
*
* Overview: Initializes the code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_HostGenericInitialize();

/*********************************************************************
* Function: void APP_HostGenericTasks(void);
*
* Overview: Keeps the app running.
*
* PreCondition: The app should have been initialized via
*   the APP_HostGenericInitialize() function
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_HostGenericTasks();

bool APP_HostGenericAttachEvent ( uint8_t address, GENERIC_DEVICE_ID *dev_id );
bool APP_HostGenericDetachEvent ( uint8_t address );
bool APP_HostGenericTxDoneEvent ( uint8_t address, uint32_t dataLength );
bool APP_HostGenericRxDoneEvent ( uint8_t address, uint32_t dataLength );
