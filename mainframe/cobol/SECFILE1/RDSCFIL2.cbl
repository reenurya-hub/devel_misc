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
                  STATUS ST_FILE.
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
       01  ST_FILE                             PIC XX.
       01  X                                   PIC X.
       01  RESULT                              PIC X(75).
       01  END_OF_FILE                         PIC X.
      *
       01 DATAS.
          03 D_PLAY_ID                         PIC 9(20).
          03 D_PLAY_NAME                       PIC X(60).
          03 D_PLAY_LNAME                      PIC X(60).
          03 D_PLAY_POS                        PIC XX.
          03 D_PLAY_NUM                        PIC 9(3).
      * ===============================================================
       PROCEDURE DIVISION.
       MAIN.
           PERFORM OPEN-FILE.
           MOVE "1" TO END_OF_FILE.
           PERFORM READ-NEXT-RECORD.
           PERFORM SHOW-RECORDS
           UNTIL END_OF_FILE = "0".
           ACCEPT X.
           PERFORM CLOSE-FILE.
           STOP RUN.
      * ...............................................................
       OPEN-FILE.
      * OPEN INPUT SEQUENTIAL FILE TO READ REGISTERS
           OPEN INPUT PLAYERS.
           IF ST_FILE > "07"
              DISPLAY "OPEN FILE ERROR!"
              ACCEPT X
           END-IF.
      * ...............................................................
       READ-NEXT-RECORD.
           READ PLAYERS NEXT RECORD
           AT END
           DISPLAY "END READ OF THE REGISTERS"
           MOVE "0" TO END_OF_FILE.
      * ...............................................................
       SHOW-RECORDS.
           PERFORM SHOW-FIELDS.
           PERFORM READ-NEXT-RECORD.
      * ...............................................................
       SHOW-FIELDS.
               MOVE PLAY_ID     TO D_PLAY_ID.
               MOVE PLAY_NAME     TO D_PLAY_NAME.
               MOVE PLAY_LNAME     TO D_PLAY_LNAME.
               MOVE PLAY_POS     TO D_PLAY_POS.
               MOVE PLAY_NUM     TO D_PLAY_NUM.
      *         DISPLAY "ID PLAYER:".
      *         DISPLAY D_PLAY_ID.
               MOVE SPACES TO RESULT.
               STRING "ID PLAYER:" D_PLAY_ID
               DELIMITED BY SIZE INTO RESULT
               DISPLAY RESULT.
               MOVE SPACES TO RESULT.
               STRING "NAME     :" D_PLAY_NAME
               DELIMITED BY SIZE INTO RESULT
               DISPLAY RESULT.
               MOVE SPACES TO RESULT.
               STRING "LAST NAME:" D_PLAY_LNAME
               DELIMITED BY SIZE INTO RESULT
               DISPLAY RESULT.
               MOVE SPACES TO RESULT.
               STRING "POSITION :" D_PLAY_POS
               DELIMITED BY SIZE INTO RESULT
               DISPLAY RESULT.
               MOVE SPACES TO RESULT.
               STRING "NUMBER   :" D_PLAY_NUM
               DELIMITED BY SIZE INTO RESULT
               DISPLAY RESULT.
      *         ACCEPT X.
      * ...............................................................
       CLOSE-FILE.
         CLOSE PLAYERS.
      * ===============================================================
       END PROGRAM RDSCFIL1.
