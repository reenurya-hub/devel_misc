      * ===============================================================
       IDENTIFICATION DIVISION.
      * WRSECF3 = WRITE REGISTERS IN SECUENTIAL FILE 1
       PROGRAM-ID. WRSECF3.
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
           PERFORM 300-REC-DATA     THRU 500-F-REC-DATA.
           PERFORM 600-CLOSE-FILE.
           STOP RUN.
      * ...............................................................
       200-OPEN-FILE.
      * OPEN EXTEND SEQUENTIAL FILE TO ADD REGISTERS
           OPEN EXTEND PLAYERS.
           IF ST-FILE > "07"
              DISPLAY "OPEN FILE ERROR!"
              ACCEPT X
           END-IF.
      * ...............................................................
       300-REC-DATA.
           INITIALIZE REG-PLAYERS.
           DISPLAY "RECORDING PLAYER 3".
           MOVE 23569875               TO PLAY_ID.
           MOVE "ARLEY"                TO PLAY_NAME.
           MOVE "PEREZ"                TO PLAY_LNAME.
           MOVE "MD"                   TO PLAY_POS.
           MOVE 8                      TO PLAY_NUM.
           DISPLAY "PLAYER RECORDED".
           ACCEPT X.
      * ...............................................................
       400-REC-REG-PLAYERS.
           WRITE REG-PLAYERS.
           IF ST-FILE = "99"
               GO TO 400-REC-REG-PLAYERS
               END-IF.
           IF ST-FILE > "07"
               DISPLAY "RECORD FILE ERROR!"
               ACCEPT X
           END-IF.
      * ...............................................................
       500-F-REC-DATA.
           EXIT.
      * ...............................................................
       600-CLOSE-FILE.
           CLOSE PLAYERS.
      * ===============================================================
       END PROGRAM WRSECF3.
