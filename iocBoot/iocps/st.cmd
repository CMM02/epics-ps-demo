#!../../bin/linux-x86_64/ps

#- SPDX-FileCopyrightText: 2005 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change ps to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/ps.dbd"
ps_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../psApp/Db/ps.db","user=iocadm")
dbLoadRecords("../../psApp/Db/ps-rev.db","user=iocadm")
dbLoadRecords("../../psApp/Db/test.db","user=iocadm")

iocInit()

## Start any sequence programs
#seq sncps,"user=iocadm"
