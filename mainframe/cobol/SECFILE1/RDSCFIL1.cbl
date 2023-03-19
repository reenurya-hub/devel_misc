      * ===============================================================
       IDENTIFICATION DIVISION.
      * RDSCFIL1 = READ REGISTERS IN SECUENTIAL FILE 1
       PROGRAM-ID. RDSCFIL1.
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
       01  ST-FILE                             PIC XX.
       01  X                                   PIC X.
       01  EXISTS                              PIC X.
       01  MESSG                               PIC X.
      * ===============================================================
       PROCEDURE DIVISION.
       100-MAIN.
           PERFORM 200-OPEN-FILE.
           PERFORM 300-READ-DATA     THRU 500-F-READ-DATA.
           PERFORM 600-CLOSE-FILE.
           STOP RUN.
      * ...............................................................
       200-OPEN-FILE.
      * OPEN INPUT SEQUENTIAL FILE TO READ REGISTERS
           OPEN INPUT PLAYERS.
           IF ST-FILE > "07"
              DISPLAY "OPEN FILE ERROR!"
              ACCEPT X
           END-IF.
      * ...............................................................
       300-READ-DATA.
           READ PLAYERS.
           IF ST-FILE = "99" GO TO 300-READ-DATA.
           IF ST-FILE > "07" AND ST-FILE NOT = "23"
                 STRING "READ FILE ERROR = " ST-FILE
                 DELIMITED BY SIZE INTO MESSG
                 DISPLAY MESSG LINE 23 COL 1.
      * ...............................................................
       400-SHOW-DATA.
           DISPLAY "ID PLAYER:  "  LINE 05 COL 10.
           DISPLAY "NAME     :  "  LINE 06 COL 10.
           DISPLAY "LAST NAME:  "  LINE 07 COL 10.
           DISPLAY "POSITION :  "  LINE 08 COL 10.
           DISPLAY "NUMBER   :  "  LINE 09 COL 10.
           DISPLAY PLAY_ID         LINE 05 COL 30.
           DISPLAY PLAY_NAME       LINE 06 COL 30.
           DISPLAY PLAY_LNAME      LINE 07 COL 30.
           DISPLAY PLAY_POS        LINE 08 COL 30.
           DISPLAY PLAY_NUM        LINE 09 COL 30.
           ACCEPT X.
      * ...............................................................
       500-F-READ-DATA.
           EXIT.
      * ...............................................................
       600-CLOSE-FILE.
           CLOSE PLAYERS.
      * ===============================================================
       END PROGRAM RDSCFIL1.
