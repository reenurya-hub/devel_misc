       IDENTIFICATION DIVISION.
       PROGRAM-ID. SCFIL1.
      ***************************************************************
      *  This program reads a file containing total of passengers   *
      *   in flight and generates a report file.                    *
      ***************************************************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
            SELECT FFILE ASSIGN TO "FLIGHTS.DAT"
             ORGANIZATION IS LINE SEQUENTIAL.
            SELECT PRINT-FILE ASSIGN TO "FFREP.DAT".


       DATA DIVISION.
       FILE SECTION.
       FD FFILE.

       01 FLIGHTDETAILS.
            88 ENDOFFILE                 VALUE HIGH-VALUES.
            05 FLIGHT-CODE               PIC 9(5).
            05 FLIGHT-AIRLINE            PIC X(20).
            05 FLIGHT-DEPARTURE          PIC X(20).
            05 FLIGHT-ARRIVAL            PIC X(20).
            05 FLIGHT-PASSENGERS         PIC 9(4).
            05 TOTAL-FLIGHT-PASSENGERS    PIC 9(6).

        FD PRINT-FILE.

        01  PRINT-LINE                  PIC X(132).

        WORKING-STORAGE SECTION.
        01   WS-TOTAL-PASSENGERS        PIC 9(4).


        01  HEADING-LINE.
            05 FILLER               PIC X(5) VALUE SPACES.
            05 FILLER               PIC X(11) VALUE 'FLIGHT-CODE'.
            05 FILLER               PIC X(9) VALUE SPACES.
            05 FILLER               PIC X(15)  VALUE 'FLIGHT-AIRLINE'.
            05 FILLER               PIC X(15) VALUE SPACES.
            05 FILLER               PIC X(20) VALUE 'FLIGHT-PASSENGERS'.
            05 FILLER               PIC X(73) VALUE SPACES.

        01  DETAIL-LINE.
            05 FILLER                   PIC X(5)  VALUE SPACES.
            05 DET-FLIGHT-CODE               PIC 9(5).
            05 FILLER                   PIC X(15)  VALUE SPACES.
            05 DET-FLIGHT-AIRLINE        PIC X(20).
            05 FILLER                   PIC X(10)  VALUE SPACES.
            05 DET-FLIGHT-PASSENGERS       PIC 9(5).
            05 FILLER                   PIC X(15)  VALUE SPACES.

        01  TOTAL-LINE.
            05 FILLER                       PIC X(5)   VALUE SPACES.
            05 FILLER                       PIC X(20)  VALUE SPACES.
            05 FILLER                       PIC X(20)  VALUE SPACES.
            05 FILLER                       PIC X(10)   VALUE SPACES.
            05 F-TOTAL-FLIGHT-PASSENGERS       PIC 9(6).


        PROCEDURE DIVISION.

        0050-OPEN-FILE.
           OPEN INPUT FFILE.
           OPEN OUTPUT PRINT-FILE.
           PERFORM 0100-PROCESS-RECORDS.
           PERFORM 0200-STOP-RUN.

        0100-PROCESS-RECORDS.

           PERFORM 0110-WRITE-HEADING-LINE.
           READ FFILE
                AT END SET ENDOFFILE TO TRUE
                END-READ.
           PERFORM UNTIL ENDOFFILE
            MOVE FLIGHT-CODE TO DET-FLIGHT-CODE
            MOVE FLIGHT-AIRLINE TO DET-FLIGHT-AIRLINE
            MOVE FLIGHT-PASSENGERS TO DET-FLIGHT-PASSENGERS
            ADD FLIGHT-PASSENGERS TO WS-TOTAL-PASSENGERS
            PERFORM 0120-WRITE-DETAIL-LINE

            READ FFILE
            AT END SET ENDOFFILE TO TRUE
            END-READ
           END-PERFORM.
           PERFORM 0130-WRITE-TOTAL-LINE.

        0110-WRITE-HEADING-LINE.
            MOVE HEADING-LINE TO PRINT-LINE.
            WRITE PRINT-LINE AFTER ADVANCING 1 LINE.
            MOVE SPACES TO PRINT-LINE.
            WRITE PRINT-LINE.

        0120-WRITE-DETAIL-LINE.
            MOVE DETAIL-LINE TO PRINT-LINE.
            WRITE PRINT-LINE AFTER ADVANCING 1 LINE.

        0130-WRITE-TOTAL-LINE.
            MOVE WS-TOTAL-PASSENGERS TO F-TOTAL-FLIGHT-PASSENGERS.
            MOVE TOTAL-LINE TO PRINT-LINE.
            WRITE PRINT-LINE AFTER ADVANCING 1 LINE.

        0200-STOP-RUN.
           CLOSE FFILE.
           CLOSE PRINT-FILE.
           STOP RUN.

          END PROGRAM SCFIL1.
