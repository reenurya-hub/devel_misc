        IDENTIFICATION DIVISION.
        PROGRAM-ID. SF6UPD.

        ENVIRONMENT DIVISION.

        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
        SELECT FINITDAT2 ASSIGN TO "INITDAT2.DAT"
           FILE STATUS IS FILE-CHECK-KEY
        ORGANIZATION IS SEQUENTIAL.

        DATA DIVISION.
        FILE SECTION.
        FD FINITDAT2.
        01 EMPLOYEES.
            03 EMP-ID                   PIC X(4).
            03 EMP-LNAME                PIC X(20).
            03 EMP-NAME                 PIC X(20).
            03 EMP-INITDATE             PIC X(8).
            88 ENDOFFILE VALUE HIGH-VALUES.

        WORKING-STORAGE SECTION.
        01  WS-EMP-INITDATE             PIC X(8).
        01  FILE-CHECK-KEY              PIC X(2).

        PROCEDURE DIVISION.

        0100-READ-EMPLOYEES.
            OPEN I-O FINITDAT2.
            IF FILE-CHECK-KEY NOT= "00"
               DISPLAY "Non-zero file status: ",
                  FILE-CHECK-KEY
               GO TO 9000-END-PROGRAM
            END-IF.
            PERFORM 0150-UPDATE-INITDATE.
            CLOSE FINITDAT2.

        0150-UPDATE-INITDATE.
            READ FINITDAT2
               AT END SET ENDOFFILE TO TRUE
            END-READ.

            PERFORM UNTIL ENDOFFILE
                MOVE '20200701' TO WS-EMP-INITDATE
                MOVE WS-EMP-INITDATE TO EMP-INITDATE
                REWRITE EMPLOYEES FROM EMPLOYEES
                READ FINITDAT2
                   AT END SET ENDOFFILE TO TRUE END-READ
            END-PERFORM.
        9000-END-PROGRAM.
      *   CLOSE FINITDAT2.
           STOP RUN.
        END PROGRAM SF6UPD.
