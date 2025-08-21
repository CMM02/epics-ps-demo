# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ps
# ps.dbd will be created and installed
DBD += ps.dbd

# ps.dbd will be made up from these files:
ps_DBD += base.dbd

# Include dbd files from all support applications:
#ps_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#ps_LIBS += xxx

# ps_registerRecordDeviceDriver.cpp derives from ps.dbd
ps_SRCS += ps_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ps_SRCS_DEFAULT += psMain.cpp
ps_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ps_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary



# Link QSRV (pvAccess Server) if available
ifdef EPICS_QSRV_MAJOR_VERSION
    ps_LIBS += qsrv
    ps_LIBS += $(EPICS_BASE_PVA_CORE_LIBS)
    ps_DBD += PVAServerRegister.dbd
    ps_DBD += qsrv.dbd
endif

# Finally link to the EPICS Base libraries
ps_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

