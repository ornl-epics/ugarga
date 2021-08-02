#!../../bin/linux-x86_64/UGARGA

## You may have to change UGARGA to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/UGARGA.dbd"
UGARGA_registerRecordDeviceDriver pdbbase
drvAsynIPPortConfigure ("UGARGA1","10.112.136.69:818",0,0,0)


#asynSetTraceMask("UGARGA1",0,0xFF)
#asynSetTraceIOMask("UGARGA1",0,0xFF)



## Load record instances
#dbLoadRecords("db/xxx.db","user=zmaHost")


dbLoadRecords(db/secage-UGARGA.db)

epicsThreadSleep(5)

cd "${TOP}/iocBoot/${IOC}"
iocInit

var mediatorVerbosity 7
var mySubDebug 7


## Start any sequence programs
#seq sncxxx,"user=zmaHost"
