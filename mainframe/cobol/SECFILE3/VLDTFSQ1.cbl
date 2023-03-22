        IDENTIFICATION DIVISION.
        PROGRAM-ID. VLDTFSQ1.

        ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
        SOURCE-COMPUTER.
        OBJECT-COMPUTER.

        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
            SELECT CLIENTS ASSIGN TO "DATA.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
            SELECT VCLIENTS ASSIGN TO "DATAOK.DAT"
                ORGANIZATION IS LINE SEQUENTIAL.
            SELECT ERRORREP ASSIGN TO "ERRREP.DAT".

        DATA DIVISION.
        FILE SECTION.
      * DEFINES LENGHT OF LINE FROM .DAT FILE IN CHARACTERS
        FD CLIENTS
        RECORD CONTAINS 141 CHARACTERS.

        01 CLIENT.
      * VALIDATION OF END OF FILE
            88 ENDOFCLIENTS VALUE HIGH-VALUES.
            03 CLIENT-ID                           PIC X(20).
            03 CLIENT-LNAME                        PIC X(50).
            03 CLIENT-NAME                         PIC X(50).
            03 CLIENT-DOB.
                05 YEAR-DOB                        PIC 9(4).
                05 MONTH-DOB                       PIC 9(2).
                05 DAY-DOB                         PIC 9(2).
            03 CLIENT-GENDER                       PIC X(1).
            03 CLIENT-CIVIL-STATUS                 PIC X(1).
            03 CLIENT-PEOPLE-CHARGE                PIC 9(2).
            03 CLIENT-SALARY                       PIC 9(9).
      *      88 CLIENT-ID-NULL-OR-EMPTY        VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-LNAME-NULL-OR-EMPTY    VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-NAME-NULL-OR-EMPTY    VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-YEAR-DOB-NULL-OR-EMPTY    VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-MONTH-DOB-NULL-OR-EMPTY    VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-DAY-DOB-NULL-OR-EMPTY        VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-GENDER-NULL-OR-EMPTY        VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-CIVIL-STATUS-NULL-OR-EMPTY VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-PEOPLE-CHARGE-NULL-OR-EMPTY VALUE SPACE, LOW-VALUES.
      *    88 CLIENT-SALARY-NULL-OR-EMPTY    VALUE SPACE, LOW-VALUES.


        FD VCLIENTS
        RECORD CONTAINS 141 CHARACTERS.
        01 VALID-CLIENTS-RECORD       PIC X(57).

        FD ERRORREP.
        01  PRINT-LINE        PIC X(205).

        WORKING-STORAGE SECTION.

        01  WS-DATE.
           05  WS-YEAR PIC 99.
           05  WS-MONTH PIC 99.
           05  WS-DAY   PIC 99.

        01 WS-BAD-RECORDS                          PIC 9(7).

        01 ERROR-DESCRIPTIONS.
            05 NON-NUMERIC-CLIENT-ID               PIC X(40)
               VALUE 'CLIENT ID WAS NOT NUMERIC'.
            05 VALUE-SPACES-LOW-VALUE              PIC X(40)
               VALUE 'MISSING VALUE FROM FIELD'.
            05 MISSING-LNAME                       PIC X(40)
               VALUE 'MISSING LAST NAME'.
            05 MISSING-NAME                        PIC X(40)
               VALUE 'MISSING NAME'.
            05 INVALID-YEAR-DOB                    PIC X(40)
               VALUE 'INVALID YEAR OF DATE OF BIRTH'.
            05 INVALID-MONTH-DOB                   PIC X(40)
               VALUE 'INVALID MONTH OF DATE OF BIRTH'.
            05 INVALID-DAY-DOB                     PIC X(40)
               VALUE 'INVALID DAY OF DATE OF BIRTH'.
            05 INVALID-GENDER                      PIC X(40)
               VALUE 'INVALID GENDER'.
            05 INVALID-CIVIL-STATUS                PIC X(40)
               VALUE 'INVALID CIVIL STATUS'.
            05 INVALID-PEOPLE-CHARGE               PIC X(40)
               VALUE 'INVALID PEOPLE IN CHARGE'.
            05 INVALID-SALARY                      PIC X(40)
               VALUE 'INVALID SALARY'.
        01  VALID-RECORD-SWITCH                    PIC X(3).
           88 VALID-RECORD       VALUE 'YES'.

        01  HEADING-LINE.
            05 FILLER              PIC X(9)  VALUE 'CLIENT ID'.
            05 FILLER              PIC X(14) VALUE SPACES.
            05 FILLER              PIC X(9)  VALUE 'LAST NAME'.
            05 FILLER              PIC X(34) VALUE SPACES.
            05 FILLER              PIC X(10) VALUE 'FIRST NAME'.
            05 FILLER              PIC X(33) VALUE SPACES.
            05 FILLER              PIC X(13) VALUE 'DATE OF BIRTH'.
            05 FILLER              PIC X(5)  VALUE SPACES.
            05 FILLER              PIC X(6)  VALUE 'GENDER'.
            05 FILLER              PIC X(5)  VALUE SPACES.
            05 FILLER              PIC X(12) VALUE 'CIVIL STATUS'.
            05 FILLER              PIC X(5)  VALUE SPACES.
            05 FILLER              PIC X(16) VALUE 'PEOPLE IN CHARGE'.
            05 FILLER              PIC X(5)  VALUE SPACES.
            05 FILLER              PIC X(16) VALUE 'SALARY'.
            05 FILLER              PIC X(5)  VALUE SPACES.
            05 FILLER              PIC X(40) VALUE 'ERROR MESSAGE'.

        01  HEADING-LINE1.
            05 FILLER              PIC X(100) VALUE SPACES.
            05 HEAD-MM             PIC 9(2).
            05 FILLER              PIC X VALUE '/'.
            05 HEAD-DD             PIC 9(2).
            05 FILLER              PIC X VALUE '/'.
            05 HEAD-YY             PIC 9(2).


        01  HEADING-LINE2.
      * CLIENT-ID
               05 FILLER              PIC X(20)
                  VALUE '--------------------'.
               05 FILLER              PIC X(3)  VALUE SPACES.
      * LAST-NAME
            05 FILLER              PIC X(40)
            VALUE '----------------------------------------'.
            05 FILLER              PIC X(3) VALUE SPACES.
      * FIRST-NAME
            05 FILLER              PIC X(40)
            VALUE '----------------------------------------'.
            05 FILLER              PIC X(3) VALUE SPACES.
      * DATE-OF-BIRTH
            05 FILLER              PIC X(8) VALUE '--------'.
            05 FILLER              PIC X(3) VALUE SPACES.
      * GENDER
            05 FILLER              PIC X(8) VALUE '--------'.
            05 FILLER              PIC X(3) VALUE SPACES.
      * CIVIL-STATUS
            05 FILLER              PIC X(8) VALUE '--------'.
            05 FILLER              PIC X(3) VALUE SPACES.
      * PEOPLE-CHARGE
            05 FILLER              PIC X(8) VALUE '--------'.
            05 FILLER              PIC X(3) VALUE SPACES.
      * SALARY
            05 FILLER              PIC X(9) VALUE '---------'.
            05 FILLER              PIC X(3) VALUE SPACES.
      * ERROR-MESSAGE
            05 FILLER              PIC X(40) VALUE '-----------------'.
            05 FILLER              PIC X(20) VALUE SPACES.

        01 DET-CLIENT.
            03 DET-CLIENT-ID       PIC X(20).
            03 FILLER              PIC X(3)   VALUE SPACES.
            03 DET-CLIENT-LNAME    PIC X(40).
            03 FILLER              PIC X(3)   VALUE SPACES.
            03 DET-CLIENT-NAME     PIC X(40).
            03 FILLER              PIC X(3)   VALUE SPACES.
            03 DET-CLIENT-DOB.
                05 DET-YEAR-DOB                     PIC X(4).
                05 DET-MONTH-DOB                    PIC X(2).
                05 DET-DAY-DOB                      PIC X(2).
            03 FILLER              PIC X(3)   VALUE SPACES.
            03 DET-CLIENT-GENDER                    PIC X(1).
            03 FILLER              PIC X(10)   VALUE SPACES.
            03 DET-CLIENT-CIVIL-STATUS              PIC X(1).
            03 FILLER              PIC X(10)   VALUE SPACES.
            03 DET-CLIENT-PEOPLE-CHARGE             PIC X(2).
            03 FILLER              PIC X(9)   VALUE SPACES.
            03 DET-CLIENT-SALARY                    PIC X(9).
            03 FILLER              PIC X(3)   VALUE SPACES.
            03 DET-ERROR-MSG       PIC X(40).

       PROCEDURE DIVISION.
       0050-OPEN-FILE.
           OPEN INPUT CLIENTS.
           OPEN OUTPUT VCLIENTS.
           OPEN OUTPUT ERRORREP.
           INITIALIZE WS-DATE.
           INITIALIZE WS-BAD-RECORDS.
      * INSERT DATE
           ACCEPT WS-DATE FROM DATE.
           MOVE WS-MONTH TO HEAD-MM.
           MOVE WS-DAY TO HEAD-DD.
           MOVE WS-YEAR TO HEAD-YY.

           PERFORM 0090-READ-CLIENTS-RECORD.
           PERFORM 0110-WRITE-HEADING-LINE.
           PERFORM 0100-PROCESS-RECORDS UNTIL ENDOFCLIENTS.
           PERFORM 0200-STOP-RUN.

        0090-READ-CLIENTS-RECORD.
           READ CLIENTS
              AT END SET ENDOFCLIENTS TO TRUE
              END-READ.

        0100-PROCESS-RECORDS.
           MOVE 'YES' TO VALID-RECORD-SWITCH.
           PERFORM 0150-VALIDATE-CLIENTS.
           READ CLIENTS
                AT END SET ENDOFCLIENTS TO TRUE
                END-READ.

        0110-WRITE-HEADING-LINE.
            WRITE PRINT-LINE FROM HEADING-LINE1
               AFTER ADVANCING 1 LINE.
            WRITE PRINT-LINE FROM HEADING-LINE
               AFTER ADVANCING 1 LINE.
            WRITE PRINT-LINE FROM HEADING-LINE2
               AFTER ADVANCING 1 LINE.
            MOVE SPACES TO PRINT-LINE.
            WRITE PRINT-LINE.

        0150-VALIDATE-CLIENTS.
            PERFORM 0155-PRINT-FILE-INFO.
            PERFORM 0160-VAL-CLI-ID-SP-LOWVAL
               THRU 0170-VAL-CLI-SALARY.
            IF VALID-RECORD
              WRITE VALID-CLIENTS-RECORD FROM CLIENT
            ELSE
              ADD 1 TO WS-BAD-RECORDS
            END-IF.
            IF WS-BAD-RECORDS > 5
               DISPLAY "Too many invalid records"
      *       GO TO 0200-STOP-RUN
            END-IF.

        0155-PRINT-FILE-INFO.
            MOVE CLIENT-ID                 TO DET-CLIENT-ID.
            MOVE CLIENT-LNAME              TO DET-CLIENT-LNAME.
            MOVE CLIENT-NAME               TO DET-CLIENT-NAME.
            MOVE YEAR-DOB                  TO DET-YEAR-DOB.
            MOVE MONTH-DOB                 TO DET-MONTH-DOB.
            MOVE DAY-DOB                   TO DET-DAY-DOB.
            MOVE CLIENT-GENDER             TO DET-CLIENT-GENDER.
            MOVE CLIENT-CIVIL-STATUS       TO DET-CLIENT-CIVIL-STATUS.
            MOVE CLIENT-PEOPLE-CHARGE      TO DET-CLIENT-PEOPLE-CHARGE.
            MOVE CLIENT-SALARY             TO DET-CLIENT-SALARY.


        0160-VAL-CLI-ID-SP-LOWVAL.
            IF CLIENT-ID = SPACE OR CLIENT-ID = LOW-VALUE THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE VALUE-SPACES-LOW-VALUE TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.


        0162-VAL-MISS-CLI-LNAME.
            IF CLIENT-LNAME = SPACE OR CLIENT-LNAME = LOW-VALUE THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE MISSING-LNAME TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.

        0163-VAL-MISS-CLI-NAME.
            IF CLIENT-NAME = SPACE OR CLIENT-NAME = LOW-VALUE THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE MISSING-NAME TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.

        0164-VAL-CLI-YEAR-DOB.
            IF YEAR-DOB IS > 2023 THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE INVALID-YEAR-DOB TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.

        0165-VAL-CLI-MONTH-DOB.
            IF MONTH-DOB IS > 12 THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE INVALID-MONTH-DOB TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.

        0166-VAL-CLI-DAY-DOB.
            IF DAY-DOB IS > 31 THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE INVALID-DAY-DOB TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.

        0167-VAL-CLI-GENDER.
            IF  CLIENT-GENDER IS NOT = 'M'
            AND CLIENT-GENDER IS NOT = 'F'  THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE INVALID-GENDER TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.

        0168-VAL-CLI-CIVIL-STATUS.
            IF  CLIENT-CIVIL-STATUS IS NOT = 'M'
            AND CLIENT-CIVIL-STATUS IS NOT = 'S'  THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE INVALID-CIVIL-STATUS TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.

        0169-VAL-CLI-PEOPLE-CHARGE.
            IF CLIENT-PEOPLE-CHARGE NOT NUMERIC THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE INVALID-PEOPLE-CHARGE TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.

        0170-VAL-CLI-SALARY.
            IF CLIENT-SALARY NOT NUMERIC THEN
               MOVE 'NO' TO VALID-RECORD-SWITCH
               MOVE INVALID-SALARY TO DET-ERROR-MSG
               WRITE PRINT-LINE FROM DET-CLIENT AFTER
                  ADVANCING 1 LINE.


        0200-STOP-RUN.
           CLOSE CLIENTS.
           CLOSE VCLIENTS.
           CLOSE ERRORREP.
           STOP RUN.

        END PROGRAM VLDTFSQ1.
