      * ===============================================================
       IDENTIFICATION DIVISION.
      * CRSECF1 = CREATE SECUENTIAL FILE 1
       PROGRAM-ID. CRSECF1.
      * ===============================================================
       ENVIRONMENT DIVISION.
      * ---------------------------------------------------------------
       CONFIGURATION SECTION.
      * ---------------------------------------------------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL PLAYERS ASSIGN TO "./players.dat"
                  ORGANIZATION IS SEQUENTIAL
                  ACCESS MODE  IS SEQUENTIAL
                  STATUS ST-FILE.
      * ===============================================================
       DATA DIVISION.
      * ---------------------------------------------------------------
       FILE SECTION.
       FD PLAYERS.
       01 REG-PLAYERS.
           03 PLAY_ID                          PIC 9(20).
           03 PLAY_NAME                        PIC X(60).
           03 PLAY_LNAME                       PIC X(60).
           03 PLAY_POS                         PIC XX.
           03 PLAY_NUM                         PIC 9(3).
           03 FILLER                           PIC X(300).
      * ---------------------------------------------------------------
       WORKING-STORAGE SECTION.
       01 ST-FILE                              PIC XX.
       01 X                                    PIC X.
      * ===============================================================
       PROCEDURE DIVISION.
       100-MAIN.
           PERFORM 200-OPEN-FILE.
           PERFORM 300-CLOSE-FILE.
           ACCEPT X.
           STOP RUN.
      * ...............................................................
       200-OPEN-FILE.
      * OPEN OUTPUT SEQUENTIAL FILE TO CREATE AS NEW
           OPEN OUTPUT PLAYERS.
           IF ST-FILE > "07"
              DISPLAY "OPEN FILE ERROR!"
              ACCEPT X
           END-IF.
           DISPLAY "FILE PLAYERS.DAT CREATED AND OPEN".
      * ...............................................................
       300-CLOSE-FILE.
           CLOSE PLAYERS.
           DISPLAY "FILE PLAYERS.DAT CLOSED".
      * ===============================================================
       END PROGRAM CRSECF1.
