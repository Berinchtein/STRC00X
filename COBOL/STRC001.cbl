      *****************************************************************
      * Program name:    STRC001
      * Original author: MANUEL JARRY
      *
      * Maintenence Log
      * Date       Author        Maintenance Requirement
      * ---------- ------------  ---------------------------------------
      * 25/11/2025 MANUEL JARRY  Created for COBOL-Learning
      *
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  STRC001.
       AUTHOR. MANUEL JARRY Z85614.
       INSTALLATION. IBM Z Xplore Learning Platform.
       DATE-WRITTEN. 15/11/2025.
       DATE-COMPILED. DD/11/2025.
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
      *
      *****************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM-Z.
       OBJECT-COMPUTER. IBM-Z.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT COBLPROG ASSIGN  TO COBLPROG.
           SELECT STRCCHRT ASSIGN TO STRCCHRT.
      *****************************************************************
      *
      *****************************************************************
       DATA DIVISION.
       FILE SECTION.
      *
       FD  COBLPROG.
       01 OLD-PROCEDURE-INFORMATIONS.
          05 OLD-SEQUENCE-NUMBER        PIC 9(3).
          05 PROCEDURE-NAME             PIC X(26).
      *
       FD  STRCCHRT.
       01  PRINT-AREA    PIC X(132).
      *****************************************************************
       WORKING-STORAGE SECTION.
      *
       01 SWITCHES.
          05 COBLPROG-EOF-SWITCH      PIC X        VALUE "N".
             88 COBLPROG-EOF                         VALUE "Y".
      *
       01 PRINT-FIELDS.
      *
       01 CURRENT-DATE-AND-TIME.
          05 CURRENT-DATE.
             10 CD-CURRENT-YEAR       PIC 9(4).
             10 CD-CURRENT-MONTH      PIC 9(2).
             10 CD-CURRENT-DAY        PIC 9(2).
          05 CURRENT-TIME.
             10 CD-CURRENT-HOURS      PIC 9(2).
             10 CD-CURRENT-MINUTES    PIC 9(2).
      *
       01 HEADING-LINE-1.
          05 FILLER                   PIC X(7)     VALUE "DATE:  ".
          05 HL1-DAY                  PIC 9(2).
          05 FILLER                   PIC X(1)     VALUE "/".
          05 HL1-MONTH                PIC 9(2).
          05 FILLER                   PIC X(1)     VALUE "/".
          05 HL1-YEAR                 PIC 9(4).
          05 FILLER                   PIC X(4)     VALUE SPACE.
          05 FILLER                   PIC X(12)    VALUE "MANU'S COBOL".
          05 FILLER                   PIC X(12)    VALUE " STRUCTURE L".
          05 FILLER                   PIC X(12)    VALUE "ISTING GENER".
          05 FILLER                   PIC X(12)    VALUE "ATOR        ".
          05 FILLER                   PIC X(63)    VALUE SPACE.
      *
       01 HEADING-LINE-2.
          05 FILLER                   PIC X(7)     VALUE "TIME:  ".
          05 HL2-HOURS                PIC 9(2).
          05 FILLER                   PIC X(1)     VALUE ":".
          05 HL2-MINUTES              PIC 9(2).
          05 FILLER                   PIC X(58)    VALUE SPACE.
          05 FILLER                   PIC X(7)     VALUE "STRC001".
          05 FILLER                   PIC X(55)    VALUE SPACE.
      *
       01 HEADING-LINE-3.
          05 HL3-PROGRAM-NAME         PIC X(8).
          05 FILLER                   PIC X(124)   VALUE SPACE.
      *
       01 NEW-PROCEDURE-INFORMATIONS.
      *   05 TABULATION               PIC X(3)     VALUE SPACE.    
          05 NEW-SEQUENCE-NUMBER      PIC 9(3).
          05 FILLER                   PIC X(1)     VALUE SPACE.
          05 PROCEDURE-NAME           PIC X(26).
          05 FILLER                   PIC X(1)     VALUE SPACE.
          05 COMMON-MODULE            PIC X(3)     VALUE "(c)".
      *   05 FILLER                   PIC X(98)    VALUE SPACE.
      *
       01 FOOTER-LINE.
          05 FILLER                   PIC X(7)     VALUE SPACE.
          05 FILLER                   PIC X(12)    VALUE "THANK YOU FO".
          05 FILLER                   PIC X(12)    VALUE "R USING MANU".
          05 FILLER                   PIC X(12)    VALUE "'S COBOL STR".
          05 FILLER                   PIC X(12)    VALUE "UCTURE LISTI".
          05 FILLER                   PIC X(12)    VALUE "NG GENERATOR".
          05 FILLER                   PIC X(12)    VALUE ". HAVE A GRE".
          05 FILLER                   PIC X(12)    VALUE "AT DAY!     ".
          05 FILLER                   PIC X(41)    VALUE SPACE.
      *
      *****************************************************************
      *
      ******************************************************************
       PROCEDURE DIVISION.
      ******************************************************************
      *  This procedure ???
      ******************************************************************