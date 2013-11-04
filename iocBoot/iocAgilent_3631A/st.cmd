#!../../bin/windows-x64/Agilent_3631A

## You may have to change Agilent_3631A to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "IOCNAME" "$(P=$(MYPVPREFIX))AGILENT_3631A"
epicsEnvSet "IOCSTATS_DB" "$(DEVIOCSTATS)/db/iocAdminSoft.db"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Agilent_3631A.dbd"
Agilent_3631A_registerRecordDeviceDriver pdbbase

lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Agilent_3631AApp/protocol/agilent_3631A.xml", "ndxchipir", 6, "", "spudulike", "reliablebeam")
#lvDCOMConfigure("frontpanel", "frontpanel", "$(TOP)/Agilent_3631AApp/protocol/agilent_3631A.xml", "", 6)

dbLoadRecords("db/Agilent3631A.db","P=$(IOCNAME):")
dbLoadRecords("$(IOCSTATS_DB)","IOC=$(IOCNAME)")

cd ${TOP}/iocBoot/${IOC}
iocInit

