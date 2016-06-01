#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-PIC24F_Starter_Kit_1.mk)" "nbproject/Makefile-local-PIC24F_Starter_Kit_1.mk"
include nbproject/Makefile-local-PIC24F_Starter_Kit_1.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC24F_Starter_Kit_1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mplab.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mplab.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/system.c ../src/main.c ../src/usb_config.c ../src/app_host_generic.c ../bsp/adc.c ../bsp/buttons.c ../bsp/leds.c ../bsp/oled.c ../bsp/print_ram_buffer.c ../bsp/timer_1ms.c ../framework/nanopb/pb_common.c ../framework/nanopb/pb_decode.c ../framework/nanopb/pb_encode.c ../framework/nanopb/pb_remote_usb.pb.c ../mla/usb/src/usb_hal_pic24.c ../mla/usb/src/usb_host.c ../mla/usb/src/usb_host_generic.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/139049000/system.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/usb_config.o ${OBJECTDIR}/_ext/1360937237/app_host_generic.o ${OBJECTDIR}/_ext/1360920944/adc.o ${OBJECTDIR}/_ext/1360920944/buttons.o ${OBJECTDIR}/_ext/1360920944/leds.o ${OBJECTDIR}/_ext/1360920944/oled.o ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o ${OBJECTDIR}/_ext/1360920944/timer_1ms.o ${OBJECTDIR}/_ext/822342982/pb_common.o ${OBJECTDIR}/_ext/822342982/pb_decode.o ${OBJECTDIR}/_ext/822342982/pb_encode.o ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o ${OBJECTDIR}/_ext/2036964707/usb_host.o ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/139049000/system.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/usb_config.o.d ${OBJECTDIR}/_ext/1360937237/app_host_generic.o.d ${OBJECTDIR}/_ext/1360920944/adc.o.d ${OBJECTDIR}/_ext/1360920944/buttons.o.d ${OBJECTDIR}/_ext/1360920944/leds.o.d ${OBJECTDIR}/_ext/1360920944/oled.o.d ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o.d ${OBJECTDIR}/_ext/1360920944/timer_1ms.o.d ${OBJECTDIR}/_ext/822342982/pb_common.o.d ${OBJECTDIR}/_ext/822342982/pb_decode.o.d ${OBJECTDIR}/_ext/822342982/pb_encode.o.d ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o.d ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o.d ${OBJECTDIR}/_ext/2036964707/usb_host.o.d ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/139049000/system.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/usb_config.o ${OBJECTDIR}/_ext/1360937237/app_host_generic.o ${OBJECTDIR}/_ext/1360920944/adc.o ${OBJECTDIR}/_ext/1360920944/buttons.o ${OBJECTDIR}/_ext/1360920944/leds.o ${OBJECTDIR}/_ext/1360920944/oled.o ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o ${OBJECTDIR}/_ext/1360920944/timer_1ms.o ${OBJECTDIR}/_ext/822342982/pb_common.o ${OBJECTDIR}/_ext/822342982/pb_decode.o ${OBJECTDIR}/_ext/822342982/pb_encode.o ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o ${OBJECTDIR}/_ext/2036964707/usb_host.o ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o

# Source Files
SOURCEFILES=../src/system_config/system.c ../src/main.c ../src/usb_config.c ../src/app_host_generic.c ../bsp/adc.c ../bsp/buttons.c ../bsp/leds.c ../bsp/oled.c ../bsp/print_ram_buffer.c ../bsp/timer_1ms.c ../framework/nanopb/pb_common.c ../framework/nanopb/pb_decode.c ../framework/nanopb/pb_encode.c ../framework/nanopb/pb_remote_usb.pb.c ../mla/usb/src/usb_hal_pic24.c ../mla/usb/src/usb_host.c ../mla/usb/src/usb_host_generic.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-PIC24F_Starter_Kit_1.mk dist/${CND_CONF}/${IMAGE_TYPE}/mplab.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB106
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/139049000/system.o: ../src/system_config/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/139049000" 
	@${RM} ${OBJECTDIR}/_ext/139049000/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/139049000/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/system.c  -o ${OBJECTDIR}/_ext/139049000/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/139049000/system.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/139049000/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/usb_config.o: ../src/usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb_config.c  -o ${OBJECTDIR}/_ext/1360937237/usb_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/usb_config.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/usb_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_host_generic.o: ../src/app_host_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_host_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_host_generic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/app_host_generic.c  -o ${OBJECTDIR}/_ext/1360937237/app_host_generic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_host_generic.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_host_generic.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/adc.o: ../bsp/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/adc.c  -o ${OBJECTDIR}/_ext/1360920944/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/adc.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/buttons.o: ../bsp/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/buttons.c  -o ${OBJECTDIR}/_ext/1360920944/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/buttons.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/buttons.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/leds.o: ../bsp/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/leds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/leds.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/leds.c  -o ${OBJECTDIR}/_ext/1360920944/leds.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/leds.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/leds.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/oled.o: ../bsp/oled.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/oled.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/oled.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/oled.c  -o ${OBJECTDIR}/_ext/1360920944/oled.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/oled.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/oled.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o: ../bsp/print_ram_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/print_ram_buffer.c  -o ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/timer_1ms.o: ../bsp/timer_1ms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/timer_1ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/timer_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/timer_1ms.c  -o ${OBJECTDIR}/_ext/1360920944/timer_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/timer_1ms.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/timer_1ms.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/822342982/pb_common.o: ../framework/nanopb/pb_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822342982" 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../framework/nanopb/pb_common.c  -o ${OBJECTDIR}/_ext/822342982/pb_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/822342982/pb_common.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/822342982/pb_common.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/822342982/pb_decode.o: ../framework/nanopb/pb_decode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822342982" 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_decode.o.d 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_decode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../framework/nanopb/pb_decode.c  -o ${OBJECTDIR}/_ext/822342982/pb_decode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/822342982/pb_decode.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/822342982/pb_decode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/822342982/pb_encode.o: ../framework/nanopb/pb_encode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822342982" 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_encode.o.d 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_encode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../framework/nanopb/pb_encode.c  -o ${OBJECTDIR}/_ext/822342982/pb_encode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/822342982/pb_encode.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/822342982/pb_encode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o: ../framework/nanopb/pb_remote_usb.pb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822342982" 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o.d 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../framework/nanopb/pb_remote_usb.pb.c  -o ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o: ../mla/usb/src/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036964707" 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../mla/usb/src/usb_hal_pic24.c  -o ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2036964707/usb_host.o: ../mla/usb/src/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036964707" 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../mla/usb/src/usb_host.c  -o ${OBJECTDIR}/_ext/2036964707/usb_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2036964707/usb_host.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036964707/usb_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2036964707/usb_host_generic.o: ../mla/usb/src/usb_host_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036964707" 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../mla/usb/src/usb_host_generic.c  -o ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2036964707/usb_host_generic.o.d"      -g -D__DEBUG     -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036964707/usb_host_generic.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/139049000/system.o: ../src/system_config/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/139049000" 
	@${RM} ${OBJECTDIR}/_ext/139049000/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/139049000/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system_config/system.c  -o ${OBJECTDIR}/_ext/139049000/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/139049000/system.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/139049000/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/usb_config.o: ../src/usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb_config.c  -o ${OBJECTDIR}/_ext/1360937237/usb_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/usb_config.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/usb_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_host_generic.o: ../src/app_host_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_host_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_host_generic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/app_host_generic.c  -o ${OBJECTDIR}/_ext/1360937237/app_host_generic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_host_generic.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_host_generic.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/adc.o: ../bsp/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/adc.c  -o ${OBJECTDIR}/_ext/1360920944/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/adc.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/buttons.o: ../bsp/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/buttons.c  -o ${OBJECTDIR}/_ext/1360920944/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/buttons.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/buttons.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/leds.o: ../bsp/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/leds.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/leds.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/leds.c  -o ${OBJECTDIR}/_ext/1360920944/leds.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/leds.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/leds.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/oled.o: ../bsp/oled.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/oled.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/oled.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/oled.c  -o ${OBJECTDIR}/_ext/1360920944/oled.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/oled.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/oled.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o: ../bsp/print_ram_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/print_ram_buffer.c  -o ${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/print_ram_buffer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360920944/timer_1ms.o: ../bsp/timer_1ms.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360920944" 
	@${RM} ${OBJECTDIR}/_ext/1360920944/timer_1ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360920944/timer_1ms.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../bsp/timer_1ms.c  -o ${OBJECTDIR}/_ext/1360920944/timer_1ms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360920944/timer_1ms.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360920944/timer_1ms.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/822342982/pb_common.o: ../framework/nanopb/pb_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822342982" 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../framework/nanopb/pb_common.c  -o ${OBJECTDIR}/_ext/822342982/pb_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/822342982/pb_common.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/822342982/pb_common.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/822342982/pb_decode.o: ../framework/nanopb/pb_decode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822342982" 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_decode.o.d 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_decode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../framework/nanopb/pb_decode.c  -o ${OBJECTDIR}/_ext/822342982/pb_decode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/822342982/pb_decode.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/822342982/pb_decode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/822342982/pb_encode.o: ../framework/nanopb/pb_encode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822342982" 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_encode.o.d 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_encode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../framework/nanopb/pb_encode.c  -o ${OBJECTDIR}/_ext/822342982/pb_encode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/822342982/pb_encode.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/822342982/pb_encode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o: ../framework/nanopb/pb_remote_usb.pb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822342982" 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o.d 
	@${RM} ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../framework/nanopb/pb_remote_usb.pb.c  -o ${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/822342982/pb_remote_usb.pb.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o: ../mla/usb/src/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036964707" 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../mla/usb/src/usb_hal_pic24.c  -o ${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036964707/usb_hal_pic24.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2036964707/usb_host.o: ../mla/usb/src/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036964707" 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../mla/usb/src/usb_host.c  -o ${OBJECTDIR}/_ext/2036964707/usb_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2036964707/usb_host.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036964707/usb_host.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2036964707/usb_host_generic.o: ../mla/usb/src/usb_host_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2036964707" 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../mla/usb/src/usb_host_generic.c  -o ${OBJECTDIR}/_ext/2036964707/usb_host_generic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2036964707/usb_host_generic.o.d"        -g -omf=elf -no-legacy-libc  -fno-short-double -O0 -I"../src" -I"../src/system_config" -I"../bsp" -I"../mla/usb/inc" -I"../mla/usb/src" -I"../framework" -I"../framework/nanopb" -DPIC24F_STARTER_KIT -msmart-io=1 -msfr-warn=off   -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/2036964707/usb_host_generic.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/mplab.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/mplab.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG   -omf=elf -no-legacy-libc   -mreserve=data@0x800:0x84F   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,$(MP_LINKER_FILE_OPTION),--heap=6000,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/mplab.x.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/mplab.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -no-legacy-libc  -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=6000,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/mplab.x.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC24F_Starter_Kit_1
	${RM} -r dist/PIC24F_Starter_Kit_1

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
