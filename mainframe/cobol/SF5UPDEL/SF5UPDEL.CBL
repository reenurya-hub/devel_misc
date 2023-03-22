        IDENTIFICATION DIVISION.
        PROGRAM-ID. SF5UPDEL.

        ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
        SELECT DATAS ASSIGN TO "INITDATA.DAT"
           FILE STATUS IS ST-FILE
        ORGANIZATION IS SEQUENTIAL.

        SELECT DATAOUT ASSIGN TO "DATAOUT.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

        DATA DIVISION.
        FILE SECTION.
        FD DATAS.
        01 EMPLOYEES.
            03 EMP-ID                PIC X(4).
            03 EMP-LNAME            PIC X(20).
            03 EMP-NAME                PIC X(20).
            03 EMP-INITDATE.
                05 EMP-INITDATE-YY    PIC X(4).
                05 EMP-INITDATE-MM    PIC X(2).
                05 EMP-INITDATE-DD  PIC X(2).
        88 ENDOFFILE VALUE HIGH-VALUES.


        FD DATAOUT.
        01 DATAOUT-EMPLOYEES.
            03 DO-ID                PIC X(4).
            03 DO-LNAME                PIC X(20).
            03 DO-NAME                PIC X(20).
            03 DO-INITDATE.
                05 DO-INITDATE-YY    PIC X(4).
                05 DO-INITDATE-MM    PIC X(2).
                05 DO-INITDATE-DD   PIC X(2).

        WORKING-STORAGE SECTION.

        01 WS-EMPLOYEES.
            03 WS-ID                PIC X(4).
            03 WS-LNAME                PIC X(20).
            03 WS-NAME                PIC X(20).
            03 WS-INITDATE.
                05 WS-INITDATE-YY    PIC X(4).
                05 WS-INITDATE-MM    PIC X(2).
                05 WS-INITDATE-DD   PIC X(2).
        01  ST-FILE   PIC XX.




        PROCEDURE DIVISION.

        0100-READ-INITDATA.
            OPEN INPUT     DATAS.
            OPEN OUTPUT     DATAOUT.
            IF ST-FILE NOT = "00"
               DISPLAY "Non-zero file status: ",
                  ST-FILE
               GO TO 9000-END-PROGRAM
            END-IF.

            READ DATAS
            AT END SET ENDOFFILE TO TRUE
            END-READ.

            PERFORM 0110-PROCESS-FILE UNTIL ENDOFFILE.

        0110-PROCESS-FILE.
            MOVE EMP-ID TO WS-ID.
            MOVE EMP-LNAME TO WS-LNAME.
            MOVE EMP-NAME TO WS-NAME.
      *    MOVE EMP-INITDATE-YY TO WS-INITDATE-YY.
      *    MOVE EMP-INITDATE-MM TO WS-INITDATE-MM.
      *    MOVE EMP-INITDATE-DD TO WS-INITDATE-DD.
            IF WS-ID = SPACE OR WS-ID = LOW-VALUE THEN
            MOVE "1000" TO WS-ID
            END-IF.
            IF WS-LNAME = SPACE OR WS-LNAME = LOW-VALUE THEN
            MOVE "DOE" TO WS-LNAME
            END-IF.
            IF WS-NAME = SPACE OR WS-NAME = LOW-VALUE THEN
            MOVE "JOHN" TO WS-NAME
            END-IF.
            MOVE "2023" TO WS-INITDATE-YY.
            MOVE "01" TO WS-INITDATE-MM.
            MOVE "01" TO WS-INITDATE-DD.

      *    MOVE WS-ID TO DO-ID.
      *    MOVE WS-LNAME TO DO-LNAME.
      *    MOVE WS-EMP-NAME TO DO-NAME.
      *    MOVE WS-INITDATE-YY TO WS-INITDATE-YY.
      *    MOVE WS-INITDATE-MM TO DO-INITDATE-MM.
      *    MOVE WS-INITDATE-DD TO DO-INITDATE-DD.

            WRITE DATAOUT-EMPLOYEES FROM     WS-EMPLOYEES.

            READ DATAS
            AT END SET ENDOFFILE TO TRUE
            END-READ.

       9000-END-PROGRAM.
           CLOSE DATAS.
           CLOSE DATAOUT.
           STOP RUN.
        END PROGRAM SF5UPDEL.
