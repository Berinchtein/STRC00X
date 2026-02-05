//RPT0001J  JOB ,'M JARRY',MSGLEVEL=(2,0),CLASS=A,NOTIFY=&SYSUID
//*--------------------------------------------------------------------*
//* COMPILE, LINK, AND EXECUTE A COBOL REPORT PROGRAM FOR Z/OS (MANU)
//*--------------------------------------------------------------------*
//STEP1    EXEC PROC=IGYWCLG,PARM.COBOL='XREF,FLAG(I,E)'
//COBOL.SYSIN   DD DSN=&SYSUID..CBL(RPT0001),DISP=SHR
//COBOL.SYSLIB  DD DSN=&SYSUID..COPYLIB,DISP=SHR
//*--------------------------------------------------------------------*
//LKED.SYSLMOD  DD DSN=&SYSUID..LOAD(RPT0001),DISP=SHR
//LKED.SYSLIB   DD
//              DD DSN=&SYSUID..OBJLIB,DISP=SHR
//*--------------------------------------------------------------------*
//GO.CUSTMAST   DD DSN=&SYSUID..CUSTMAST.DATA,DISP=SHR
//GO.SALESRPT   DD SYSOUT=*
//GO.SYSOUT     DD SYSOUT=*
//
