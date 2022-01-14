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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=application.c FREERTOSFILES/croutine.c FREERTOSFILES/event_groups.c FREERTOSFILES/heap_4.c FREERTOSFILES/list.c FREERTOSFILES/port.c FREERTOSFILES/queue.c FREERTOSFILES/stream_buffer.c FREERTOSFILES/tasks.c FREERTOSFILES/timers.c drivers/m24C32.c drivers/mADC.c drivers/mDIO.c drivers/mExternalINT.c drivers/mKIT.c drivers/mKeypad.c drivers/mLCD_4bits.c drivers/mLCD_8bits.c drivers/mSPI.c drivers/mTWI.c drivers/mTimer0.c drivers/mUART.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/application.o ${OBJECTDIR}/FREERTOSFILES/croutine.o ${OBJECTDIR}/FREERTOSFILES/event_groups.o ${OBJECTDIR}/FREERTOSFILES/heap_4.o ${OBJECTDIR}/FREERTOSFILES/list.o ${OBJECTDIR}/FREERTOSFILES/port.o ${OBJECTDIR}/FREERTOSFILES/queue.o ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o ${OBJECTDIR}/FREERTOSFILES/tasks.o ${OBJECTDIR}/FREERTOSFILES/timers.o ${OBJECTDIR}/drivers/m24C32.o ${OBJECTDIR}/drivers/mADC.o ${OBJECTDIR}/drivers/mDIO.o ${OBJECTDIR}/drivers/mExternalINT.o ${OBJECTDIR}/drivers/mKIT.o ${OBJECTDIR}/drivers/mKeypad.o ${OBJECTDIR}/drivers/mLCD_4bits.o ${OBJECTDIR}/drivers/mLCD_8bits.o ${OBJECTDIR}/drivers/mSPI.o ${OBJECTDIR}/drivers/mTWI.o ${OBJECTDIR}/drivers/mTimer0.o ${OBJECTDIR}/drivers/mUART.o
POSSIBLE_DEPFILES=${OBJECTDIR}/application.o.d ${OBJECTDIR}/FREERTOSFILES/croutine.o.d ${OBJECTDIR}/FREERTOSFILES/event_groups.o.d ${OBJECTDIR}/FREERTOSFILES/heap_4.o.d ${OBJECTDIR}/FREERTOSFILES/list.o.d ${OBJECTDIR}/FREERTOSFILES/port.o.d ${OBJECTDIR}/FREERTOSFILES/queue.o.d ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o.d ${OBJECTDIR}/FREERTOSFILES/tasks.o.d ${OBJECTDIR}/FREERTOSFILES/timers.o.d ${OBJECTDIR}/drivers/m24C32.o.d ${OBJECTDIR}/drivers/mADC.o.d ${OBJECTDIR}/drivers/mDIO.o.d ${OBJECTDIR}/drivers/mExternalINT.o.d ${OBJECTDIR}/drivers/mKIT.o.d ${OBJECTDIR}/drivers/mKeypad.o.d ${OBJECTDIR}/drivers/mLCD_4bits.o.d ${OBJECTDIR}/drivers/mLCD_8bits.o.d ${OBJECTDIR}/drivers/mSPI.o.d ${OBJECTDIR}/drivers/mTWI.o.d ${OBJECTDIR}/drivers/mTimer0.o.d ${OBJECTDIR}/drivers/mUART.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/application.o ${OBJECTDIR}/FREERTOSFILES/croutine.o ${OBJECTDIR}/FREERTOSFILES/event_groups.o ${OBJECTDIR}/FREERTOSFILES/heap_4.o ${OBJECTDIR}/FREERTOSFILES/list.o ${OBJECTDIR}/FREERTOSFILES/port.o ${OBJECTDIR}/FREERTOSFILES/queue.o ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o ${OBJECTDIR}/FREERTOSFILES/tasks.o ${OBJECTDIR}/FREERTOSFILES/timers.o ${OBJECTDIR}/drivers/m24C32.o ${OBJECTDIR}/drivers/mADC.o ${OBJECTDIR}/drivers/mDIO.o ${OBJECTDIR}/drivers/mExternalINT.o ${OBJECTDIR}/drivers/mKIT.o ${OBJECTDIR}/drivers/mKeypad.o ${OBJECTDIR}/drivers/mLCD_4bits.o ${OBJECTDIR}/drivers/mLCD_8bits.o ${OBJECTDIR}/drivers/mSPI.o ${OBJECTDIR}/drivers/mTWI.o ${OBJECTDIR}/drivers/mTimer0.o ${OBJECTDIR}/drivers/mUART.o

# Source Files
SOURCEFILES=application.c FREERTOSFILES/croutine.c FREERTOSFILES/event_groups.c FREERTOSFILES/heap_4.c FREERTOSFILES/list.c FREERTOSFILES/port.c FREERTOSFILES/queue.c FREERTOSFILES/stream_buffer.c FREERTOSFILES/tasks.c FREERTOSFILES/timers.c drivers/m24C32.c drivers/mADC.c drivers/mDIO.c drivers/mExternalINT.c drivers/mKIT.c drivers/mKeypad.c drivers/mLCD_4bits.c drivers/mLCD_8bits.c drivers/mSPI.c drivers/mTWI.c drivers/mTimer0.c drivers/mUART.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/878316c2d9a958ebadc1a350e01aa31e1e16d37d .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
${OBJECTDIR}/FREERTOSFILES/croutine.o: FREERTOSFILES/croutine.c  .generated_files/flags/default/33144bae736e349c34ea8629757fb4583aabb09e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/croutine.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/croutine.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/croutine.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/croutine.o -o ${OBJECTDIR}/FREERTOSFILES/croutine.o FREERTOSFILES/croutine.c 
	
${OBJECTDIR}/FREERTOSFILES/event_groups.o: FREERTOSFILES/event_groups.c  .generated_files/flags/default/e0bd8638f37bf00ba9563339284c72ca674b467b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/event_groups.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/event_groups.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/event_groups.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/event_groups.o -o ${OBJECTDIR}/FREERTOSFILES/event_groups.o FREERTOSFILES/event_groups.c 
	
${OBJECTDIR}/FREERTOSFILES/heap_4.o: FREERTOSFILES/heap_4.c  .generated_files/flags/default/537236d517e7c77eaaf301a8bc75cb7017f9919d .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/heap_4.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/heap_4.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/heap_4.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/heap_4.o -o ${OBJECTDIR}/FREERTOSFILES/heap_4.o FREERTOSFILES/heap_4.c 
	
${OBJECTDIR}/FREERTOSFILES/list.o: FREERTOSFILES/list.c  .generated_files/flags/default/9eb4ec8cfe255df4fec8c3199435b904db38bf88 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/list.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/list.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/list.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/list.o -o ${OBJECTDIR}/FREERTOSFILES/list.o FREERTOSFILES/list.c 
	
${OBJECTDIR}/FREERTOSFILES/port.o: FREERTOSFILES/port.c  .generated_files/flags/default/ff3585c084bf9d06c0b7b5daebc4a115afb9a7e1 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/port.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/port.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/port.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/port.o -o ${OBJECTDIR}/FREERTOSFILES/port.o FREERTOSFILES/port.c 
	
${OBJECTDIR}/FREERTOSFILES/queue.o: FREERTOSFILES/queue.c  .generated_files/flags/default/ffbc00be277ae52e1bef9cd0d8b876b321689bbc .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/queue.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/queue.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/queue.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/queue.o -o ${OBJECTDIR}/FREERTOSFILES/queue.o FREERTOSFILES/queue.c 
	
${OBJECTDIR}/FREERTOSFILES/stream_buffer.o: FREERTOSFILES/stream_buffer.c  .generated_files/flags/default/957a9b9a14d4c982c523bb18a3eb12a0efc80b85 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/stream_buffer.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/stream_buffer.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o -o ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o FREERTOSFILES/stream_buffer.c 
	
${OBJECTDIR}/FREERTOSFILES/tasks.o: FREERTOSFILES/tasks.c  .generated_files/flags/default/88639404b40937152d2c8ab3a5156122db3c998c .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/tasks.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/tasks.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/tasks.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/tasks.o -o ${OBJECTDIR}/FREERTOSFILES/tasks.o FREERTOSFILES/tasks.c 
	
${OBJECTDIR}/FREERTOSFILES/timers.o: FREERTOSFILES/timers.c  .generated_files/flags/default/abab6464100f42095542282eba7d87353984c32a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/timers.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/timers.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/timers.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/timers.o -o ${OBJECTDIR}/FREERTOSFILES/timers.o FREERTOSFILES/timers.c 
	
${OBJECTDIR}/drivers/m24C32.o: drivers/m24C32.c  .generated_files/flags/default/63ec8a6451b24344f4bb2f4aa70f2b99db3eb3b1 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/m24C32.o.d 
	@${RM} ${OBJECTDIR}/drivers/m24C32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/m24C32.o.d" -MT "${OBJECTDIR}/drivers/m24C32.o.d" -MT ${OBJECTDIR}/drivers/m24C32.o -o ${OBJECTDIR}/drivers/m24C32.o drivers/m24C32.c 
	
${OBJECTDIR}/drivers/mADC.o: drivers/mADC.c  .generated_files/flags/default/b7c7b4b35beb171951c736788fc4a2d782370066 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mADC.o.d 
	@${RM} ${OBJECTDIR}/drivers/mADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mADC.o.d" -MT "${OBJECTDIR}/drivers/mADC.o.d" -MT ${OBJECTDIR}/drivers/mADC.o -o ${OBJECTDIR}/drivers/mADC.o drivers/mADC.c 
	
${OBJECTDIR}/drivers/mDIO.o: drivers/mDIO.c  .generated_files/flags/default/8e2320067aee261979e0f9d0aa251fe41e24899a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mDIO.o.d 
	@${RM} ${OBJECTDIR}/drivers/mDIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mDIO.o.d" -MT "${OBJECTDIR}/drivers/mDIO.o.d" -MT ${OBJECTDIR}/drivers/mDIO.o -o ${OBJECTDIR}/drivers/mDIO.o drivers/mDIO.c 
	
${OBJECTDIR}/drivers/mExternalINT.o: drivers/mExternalINT.c  .generated_files/flags/default/2f332d37892bc35125972a8d345ffcbbcef09c85 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mExternalINT.o.d 
	@${RM} ${OBJECTDIR}/drivers/mExternalINT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mExternalINT.o.d" -MT "${OBJECTDIR}/drivers/mExternalINT.o.d" -MT ${OBJECTDIR}/drivers/mExternalINT.o -o ${OBJECTDIR}/drivers/mExternalINT.o drivers/mExternalINT.c 
	
${OBJECTDIR}/drivers/mKIT.o: drivers/mKIT.c  .generated_files/flags/default/93da6da70c03142e6f16a78cc8dfeffc2391825 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mKIT.o.d 
	@${RM} ${OBJECTDIR}/drivers/mKIT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mKIT.o.d" -MT "${OBJECTDIR}/drivers/mKIT.o.d" -MT ${OBJECTDIR}/drivers/mKIT.o -o ${OBJECTDIR}/drivers/mKIT.o drivers/mKIT.c 
	
${OBJECTDIR}/drivers/mKeypad.o: drivers/mKeypad.c  .generated_files/flags/default/8ab1de0451709ae5c7a80fd340a55c338b9b805e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mKeypad.o.d 
	@${RM} ${OBJECTDIR}/drivers/mKeypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mKeypad.o.d" -MT "${OBJECTDIR}/drivers/mKeypad.o.d" -MT ${OBJECTDIR}/drivers/mKeypad.o -o ${OBJECTDIR}/drivers/mKeypad.o drivers/mKeypad.c 
	
${OBJECTDIR}/drivers/mLCD_4bits.o: drivers/mLCD_4bits.c  .generated_files/flags/default/57208d71ffa1e7f6da0dfbc4c87afe2b9c143864 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mLCD_4bits.o.d 
	@${RM} ${OBJECTDIR}/drivers/mLCD_4bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mLCD_4bits.o.d" -MT "${OBJECTDIR}/drivers/mLCD_4bits.o.d" -MT ${OBJECTDIR}/drivers/mLCD_4bits.o -o ${OBJECTDIR}/drivers/mLCD_4bits.o drivers/mLCD_4bits.c 
	
${OBJECTDIR}/drivers/mLCD_8bits.o: drivers/mLCD_8bits.c  .generated_files/flags/default/93f9e38c4222008bd47b78831e231d117ea8dfae .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mLCD_8bits.o.d 
	@${RM} ${OBJECTDIR}/drivers/mLCD_8bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mLCD_8bits.o.d" -MT "${OBJECTDIR}/drivers/mLCD_8bits.o.d" -MT ${OBJECTDIR}/drivers/mLCD_8bits.o -o ${OBJECTDIR}/drivers/mLCD_8bits.o drivers/mLCD_8bits.c 
	
${OBJECTDIR}/drivers/mSPI.o: drivers/mSPI.c  .generated_files/flags/default/3afb045be61c7c5bb55f1b25c0257e6d3be1e355 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mSPI.o.d 
	@${RM} ${OBJECTDIR}/drivers/mSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mSPI.o.d" -MT "${OBJECTDIR}/drivers/mSPI.o.d" -MT ${OBJECTDIR}/drivers/mSPI.o -o ${OBJECTDIR}/drivers/mSPI.o drivers/mSPI.c 
	
${OBJECTDIR}/drivers/mTWI.o: drivers/mTWI.c  .generated_files/flags/default/7461061b0f1981d052c163941013df10281c4198 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mTWI.o.d 
	@${RM} ${OBJECTDIR}/drivers/mTWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mTWI.o.d" -MT "${OBJECTDIR}/drivers/mTWI.o.d" -MT ${OBJECTDIR}/drivers/mTWI.o -o ${OBJECTDIR}/drivers/mTWI.o drivers/mTWI.c 
	
${OBJECTDIR}/drivers/mTimer0.o: drivers/mTimer0.c  .generated_files/flags/default/ff41be3a66101ccaafe311ef2e0c23c2199999d5 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mTimer0.o.d 
	@${RM} ${OBJECTDIR}/drivers/mTimer0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mTimer0.o.d" -MT "${OBJECTDIR}/drivers/mTimer0.o.d" -MT ${OBJECTDIR}/drivers/mTimer0.o -o ${OBJECTDIR}/drivers/mTimer0.o drivers/mTimer0.c 
	
${OBJECTDIR}/drivers/mUART.o: drivers/mUART.c  .generated_files/flags/default/19544edd11123d00fedb2609d1a5ceddec5e92b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mUART.o.d 
	@${RM} ${OBJECTDIR}/drivers/mUART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mUART.o.d" -MT "${OBJECTDIR}/drivers/mUART.o.d" -MT ${OBJECTDIR}/drivers/mUART.o -o ${OBJECTDIR}/drivers/mUART.o drivers/mUART.c 
	
else
${OBJECTDIR}/application.o: application.c  .generated_files/flags/default/3fb6130a57e7991777cc128cd2e7cfaaded2dd4c .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.o.d 
	@${RM} ${OBJECTDIR}/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application.o.d" -MT "${OBJECTDIR}/application.o.d" -MT ${OBJECTDIR}/application.o -o ${OBJECTDIR}/application.o application.c 
	
${OBJECTDIR}/FREERTOSFILES/croutine.o: FREERTOSFILES/croutine.c  .generated_files/flags/default/2c3d2e6d61ec28199bfbce1674d3b597a78d2dbe .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/croutine.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/croutine.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/croutine.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/croutine.o -o ${OBJECTDIR}/FREERTOSFILES/croutine.o FREERTOSFILES/croutine.c 
	
${OBJECTDIR}/FREERTOSFILES/event_groups.o: FREERTOSFILES/event_groups.c  .generated_files/flags/default/883b8597d5122e52a1c9bf1382e5d42e367c8f62 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/event_groups.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/event_groups.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/event_groups.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/event_groups.o -o ${OBJECTDIR}/FREERTOSFILES/event_groups.o FREERTOSFILES/event_groups.c 
	
${OBJECTDIR}/FREERTOSFILES/heap_4.o: FREERTOSFILES/heap_4.c  .generated_files/flags/default/2e80d6056b30f3efa8ad88ecb6d6f4dc55b32142 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/heap_4.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/heap_4.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/heap_4.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/heap_4.o -o ${OBJECTDIR}/FREERTOSFILES/heap_4.o FREERTOSFILES/heap_4.c 
	
${OBJECTDIR}/FREERTOSFILES/list.o: FREERTOSFILES/list.c  .generated_files/flags/default/5cde3f30e7918b84c8fafe5a0a4b0d8029694f40 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/list.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/list.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/list.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/list.o -o ${OBJECTDIR}/FREERTOSFILES/list.o FREERTOSFILES/list.c 
	
${OBJECTDIR}/FREERTOSFILES/port.o: FREERTOSFILES/port.c  .generated_files/flags/default/5d3b6d9441d4fc0e886fbc9f1a74f848c34cfc05 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/port.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/port.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/port.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/port.o -o ${OBJECTDIR}/FREERTOSFILES/port.o FREERTOSFILES/port.c 
	
${OBJECTDIR}/FREERTOSFILES/queue.o: FREERTOSFILES/queue.c  .generated_files/flags/default/81e0a341c935670b2b54d0327ce9c982db57c6f9 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/queue.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/queue.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/queue.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/queue.o -o ${OBJECTDIR}/FREERTOSFILES/queue.o FREERTOSFILES/queue.c 
	
${OBJECTDIR}/FREERTOSFILES/stream_buffer.o: FREERTOSFILES/stream_buffer.c  .generated_files/flags/default/4b7d151b411d8a33d6d9b977b7061ac3018caa4 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/stream_buffer.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/stream_buffer.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o -o ${OBJECTDIR}/FREERTOSFILES/stream_buffer.o FREERTOSFILES/stream_buffer.c 
	
${OBJECTDIR}/FREERTOSFILES/tasks.o: FREERTOSFILES/tasks.c  .generated_files/flags/default/d5339bd0a73be9122e278684ab15e1e2d7e7bb95 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/tasks.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/tasks.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/tasks.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/tasks.o -o ${OBJECTDIR}/FREERTOSFILES/tasks.o FREERTOSFILES/tasks.c 
	
${OBJECTDIR}/FREERTOSFILES/timers.o: FREERTOSFILES/timers.c  .generated_files/flags/default/276571363ffea3d17b91ccafa6428c7ee7d20866 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/FREERTOSFILES" 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/timers.o.d 
	@${RM} ${OBJECTDIR}/FREERTOSFILES/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/FREERTOSFILES/timers.o.d" -MT "${OBJECTDIR}/FREERTOSFILES/timers.o.d" -MT ${OBJECTDIR}/FREERTOSFILES/timers.o -o ${OBJECTDIR}/FREERTOSFILES/timers.o FREERTOSFILES/timers.c 
	
${OBJECTDIR}/drivers/m24C32.o: drivers/m24C32.c  .generated_files/flags/default/78664ee1b814ede5a4693c02a1a290d25fc62d29 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/m24C32.o.d 
	@${RM} ${OBJECTDIR}/drivers/m24C32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/m24C32.o.d" -MT "${OBJECTDIR}/drivers/m24C32.o.d" -MT ${OBJECTDIR}/drivers/m24C32.o -o ${OBJECTDIR}/drivers/m24C32.o drivers/m24C32.c 
	
${OBJECTDIR}/drivers/mADC.o: drivers/mADC.c  .generated_files/flags/default/b9ace2745c06964804b861fd4e778bf78391a4c6 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mADC.o.d 
	@${RM} ${OBJECTDIR}/drivers/mADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mADC.o.d" -MT "${OBJECTDIR}/drivers/mADC.o.d" -MT ${OBJECTDIR}/drivers/mADC.o -o ${OBJECTDIR}/drivers/mADC.o drivers/mADC.c 
	
${OBJECTDIR}/drivers/mDIO.o: drivers/mDIO.c  .generated_files/flags/default/2b183ca7693222ab19193e0d38a3132cff7203f3 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mDIO.o.d 
	@${RM} ${OBJECTDIR}/drivers/mDIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mDIO.o.d" -MT "${OBJECTDIR}/drivers/mDIO.o.d" -MT ${OBJECTDIR}/drivers/mDIO.o -o ${OBJECTDIR}/drivers/mDIO.o drivers/mDIO.c 
	
${OBJECTDIR}/drivers/mExternalINT.o: drivers/mExternalINT.c  .generated_files/flags/default/5dc98cda00042303cc1e993af8a30d67d5517466 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mExternalINT.o.d 
	@${RM} ${OBJECTDIR}/drivers/mExternalINT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mExternalINT.o.d" -MT "${OBJECTDIR}/drivers/mExternalINT.o.d" -MT ${OBJECTDIR}/drivers/mExternalINT.o -o ${OBJECTDIR}/drivers/mExternalINT.o drivers/mExternalINT.c 
	
${OBJECTDIR}/drivers/mKIT.o: drivers/mKIT.c  .generated_files/flags/default/53a39a66e99d700bf44e08f0b4a8757079107c41 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mKIT.o.d 
	@${RM} ${OBJECTDIR}/drivers/mKIT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mKIT.o.d" -MT "${OBJECTDIR}/drivers/mKIT.o.d" -MT ${OBJECTDIR}/drivers/mKIT.o -o ${OBJECTDIR}/drivers/mKIT.o drivers/mKIT.c 
	
${OBJECTDIR}/drivers/mKeypad.o: drivers/mKeypad.c  .generated_files/flags/default/e4075c4db0134eee23cd3b2512d4b6f71f925876 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mKeypad.o.d 
	@${RM} ${OBJECTDIR}/drivers/mKeypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mKeypad.o.d" -MT "${OBJECTDIR}/drivers/mKeypad.o.d" -MT ${OBJECTDIR}/drivers/mKeypad.o -o ${OBJECTDIR}/drivers/mKeypad.o drivers/mKeypad.c 
	
${OBJECTDIR}/drivers/mLCD_4bits.o: drivers/mLCD_4bits.c  .generated_files/flags/default/89f755c8d4a9b5be8ad4d97ef2f3e5148e5d4e35 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mLCD_4bits.o.d 
	@${RM} ${OBJECTDIR}/drivers/mLCD_4bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mLCD_4bits.o.d" -MT "${OBJECTDIR}/drivers/mLCD_4bits.o.d" -MT ${OBJECTDIR}/drivers/mLCD_4bits.o -o ${OBJECTDIR}/drivers/mLCD_4bits.o drivers/mLCD_4bits.c 
	
${OBJECTDIR}/drivers/mLCD_8bits.o: drivers/mLCD_8bits.c  .generated_files/flags/default/75cc63a860d5c5470439ad8056413632f0ff5cb3 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mLCD_8bits.o.d 
	@${RM} ${OBJECTDIR}/drivers/mLCD_8bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mLCD_8bits.o.d" -MT "${OBJECTDIR}/drivers/mLCD_8bits.o.d" -MT ${OBJECTDIR}/drivers/mLCD_8bits.o -o ${OBJECTDIR}/drivers/mLCD_8bits.o drivers/mLCD_8bits.c 
	
${OBJECTDIR}/drivers/mSPI.o: drivers/mSPI.c  .generated_files/flags/default/d3b04bba0d349ae044a484f91c9a4131dc566056 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mSPI.o.d 
	@${RM} ${OBJECTDIR}/drivers/mSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mSPI.o.d" -MT "${OBJECTDIR}/drivers/mSPI.o.d" -MT ${OBJECTDIR}/drivers/mSPI.o -o ${OBJECTDIR}/drivers/mSPI.o drivers/mSPI.c 
	
${OBJECTDIR}/drivers/mTWI.o: drivers/mTWI.c  .generated_files/flags/default/99d0fdf49aa70ae894d4f19bcec5eedac5830c25 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mTWI.o.d 
	@${RM} ${OBJECTDIR}/drivers/mTWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mTWI.o.d" -MT "${OBJECTDIR}/drivers/mTWI.o.d" -MT ${OBJECTDIR}/drivers/mTWI.o -o ${OBJECTDIR}/drivers/mTWI.o drivers/mTWI.c 
	
${OBJECTDIR}/drivers/mTimer0.o: drivers/mTimer0.c  .generated_files/flags/default/4aed2294a5ee30dc4c8dc5840c7c133953f7bfaa .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mTimer0.o.d 
	@${RM} ${OBJECTDIR}/drivers/mTimer0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mTimer0.o.d" -MT "${OBJECTDIR}/drivers/mTimer0.o.d" -MT ${OBJECTDIR}/drivers/mTimer0.o -o ${OBJECTDIR}/drivers/mTimer0.o drivers/mTimer0.c 
	
${OBJECTDIR}/drivers/mUART.o: drivers/mUART.c  .generated_files/flags/default/802c50c9a50606fc74387f6b616b0c40358c6340 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/drivers" 
	@${RM} ${OBJECTDIR}/drivers/mUART.o.d 
	@${RM} ${OBJECTDIR}/drivers/mUART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/drivers/mUART.o.d" -MT "${OBJECTDIR}/drivers/mUART.o.d" -MT ${OBJECTDIR}/drivers/mUART.o -o ${OBJECTDIR}/drivers/mUART.o drivers/mUART.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/ALEX25_FREERTOS.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
