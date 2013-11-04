TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Agilent_3631A
# Agilent_3631A.dbd will be created and installed
DBD += Agilent_3631A.dbd

# Agilent_3631A.dbd will be made up from these files:
Agilent_3631A_DBD += base.dbd
Agilent_3631A_DBD += lvDCOM.dbd

# Include dbd files from all support applications:
Agilent_3631A_DBD += devIocStats.dbd

# Add all the support libraries needed by this IOC
#Agilent_3631A_LIBS += xxx
Agilent_3631A_LIBS +=  lvDCOMSupport asyn autosave devIocStats
Agilent_3631A_SYS_LIBS_WIN32 += msxml2

# Agilent_3631A_registerRecordDeviceDriver.cpp derives from Agilent_3631A.dbd
Agilent_3631A_SRCS += Agilent_3631A_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Agilent_3631A_SRCS_DEFAULT += Agilent_3631AMain.cpp
Agilent_3631A_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Agilent_3631A_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Agilent_3631A_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

