       IDENTIFICATION DIVISION.
       PROGRAM-ID. SF4SALE.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT SALES ASSIGN TO "SALES.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       SELECT SALESREP ASSIGN TO "SALESREP.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD SALES.
       01 SALESDETAILS.
           88 ENDOFSALESFILE VALUE HIGH-VALUES.
           03 SLSMAN-ID                    PIC 9(4).
           03 D1-SALES                     PIC 9(8).
           03 D2-SALES                     PIC 9(8).
           03 D3-SALES                     PIC 9(8).
           03 D4-SALES                     PIC 9(8).
           03 D5-SALES                     PIC 9(8).
           03 D6-SALES                     PIC 9(8).
           03 D7-SALES                     PIC 9(8).
           03 D8-SALES                     PIC 9(8).
           03 D9-SALES                     PIC 9(8).
           03 D10-SALES                    PIC 9(8).
           03 D11-SALES                    PIC 9(8).
           03 D12-SALES                    PIC 9(8).
           03 D13-SALES                    PIC 9(8).
           03 D14-SALES                    PIC 9(8).
           03 D15-SALES                    PIC 9(8).
           03 D16-SALES                    PIC 9(8).
           03 D17-SALES                    PIC 9(8).
           03 D18-SALES                    PIC 9(8).
           03 D19-SALES                    PIC 9(8).
           03 D20-SALES                    PIC 9(8).
           03 D21-SALES                    PIC 9(8).
           03 D22-SALES                    PIC 9(8).
           03 D23-SALES                    PIC 9(8).
           03 D24-SALES                    PIC 9(8).
           03 COMMISSION                   PIC 9(3).

       FD SALESREP.
            01 PRINT-LINE       PIC X(132).

       WORKING-STORAGE SECTION.
        01  WS-FIELDS.
           03  WS-COUNT         PIC 99999 VALUE ZEROES.

        01  WS-DATE.
           03  WS-YEAR          PIC 99.
           03  WS-MONTH         PIC 99.
           03  WS-DAY           PIC 99.

        01  WS-SALES.
           03 WS-MM-SALES       PIC 9(10).
           03 WS-SALES-COMM     PIC 9(10).
           03 WS-AVG-SLS-DAY    PIC 9(10).
           03 WS-COMMISSION     PIC 9V99.

        01  HEADING-LINE.
           03 FILLER            PIC X(11)  VALUE 'SALESMAN ID'.
           03 FILLER            PIC X(3)   VALUE SPACES.
           03 FILLER            PIC X(15)  VALUE 'MONTH SALES'.
           03 FILLER            PIC X(3)   VALUE SPACES.
           03 FILLER            PIC X(10)  VALUE 'COMMISSION'.
           03 FILLER            PIC X(3)   VALUE SPACES.
           03 FILLER            PIC X(16)  VALUE 'TOTAL COMM.SALES'.
           03 FILLER            PIC X(3)   VALUE SPACES.
           03 FILLER            PIC X(17)  VALUE 'AVG. SALES BY DAY'.

        01 HEADING-LINE2.
           03 FILLER            PIC X(11)  VALUE '==========='.
           03 FILLER            PIC X(3)   VALUE SPACES.
           03 FILLER            PIC X(15)  VALUE '==============='.
           03 FILLER            PIC X(3)   VALUE SPACES.
           03 FILLER            PIC X(10)  VALUE '=========='.
           03 FILLER            PIC X(3)   VALUE SPACES.
           03 FILLER            PIC X(16)  VALUE '================'.
           03 FILLER            PIC X(3)   VALUE SPACES.
           03 FILLER            PIC X(17)  VALUE '================='.

        01 DETAIL-SALES.
           03 DET-D1-SALES                 PIC 9(8).
           03 DET-D2-SALES                    PIC 9(8).
           03 DET-D3-SALES                    PIC 9(8).
           03 DET-D4-SALES                    PIC 9(8).
           03 DET-D5-SALES                    PIC 9(8).
           03 DET-D6-SALES                    PIC 9(8).
           03 DET-D7-SALES                    PIC 9(8).
           03 DET-D8-SALES                    PIC 9(8).
           03 DET-D9-SALES                    PIC 9(8).
           03 DET-D10-SALES                    PIC 9(8).
           03 DET-D11-SALES                    PIC 9(8).
           03 DET-D12-SALES                    PIC 9(8).
           03 DET-D13-SALES                    PIC 9(8).
           03 DET-D14-SALES                    PIC 9(8).
           03 DET-D15-SALES                    PIC 9(8).
           03 DET-D16-SALES                    PIC 9(8).
           03 DET-D17-SALES                    PIC 9(8).
           03 DET-D18-SALES                    PIC 9(8).
           03 DET-D19-SALES                    PIC 9(8).
           03 DET-D20-SALES                    PIC 9(8).
           03 DET-D21-SALES                    PIC 9(8).
           03 DET-D22-SALES                    PIC 9(8).
           03 DET-D23-SALES                    PIC 9(8).
           03 DET-D24-SALES                    PIC 9(8).


        01  DETAIL-TOTAL-LINE.
           03 DET-SLSMAN-ID    PIC 9(4).
           03 FILLER           PIC X(10)  VALUE SPACES.
           03 DET-TOT-SALES    PIC $$$,$$$,$$$,$$9.
           03 FILLER           PIC X(3)  VALUE SPACES.
           03 DET-COMMISSION   PIC 9,99.
           03 FILLER           PIC X(9)  VALUE SPACES.
           03 DET-TOT-SALES-F  PIC $$$,$$$,$$9.
           03 FILLER           PIC X(8)  VALUE SPACES.
           03 DET-AVG-SLS-DAY  PIC $,$$$,$$$,$$9.
      *   03 FILLER           PIC X(7)  VALUE SPACES.


       PROCEDURE DIVISION.
       0100-OPENFILE.
           OPEN INPUT SALES.
           OPEN OUTPUT SALESREP.
           WRITE PRINT-LINE FROM HEADING-LINE AFTER
              ADVANCING 1 LINE.
           WRITE PRINT-LINE FROM HEADING-LINE2 AFTER
              ADVANCING 1 LINE.
           READ SALES
              AT END SET ENDOFSALESFILE TO TRUE
              END-READ.
           IF(ENDOFSALESFILE)
              GO TO 0900-STOP-RUN.
           PERFORM 0200-PROCESS-SALES THRU
               0210-READ-NEXT-RECORD
               UNTIL ENDOFSALESFILE.
           PERFORM 0200-PROCESS-SALES.
           PERFORM 0900-STOP-RUN.

       0200-PROCESS-SALES.

            MOVE SLSMAN-ID TO DET-SLSMAN-ID.

            MOVE D1-SALES TO DET-D1-SALES.
            MOVE D2-SALES TO DET-D2-SALES.
            MOVE D3-SALES TO DET-D3-SALES.
            MOVE D4-SALES TO DET-D4-SALES.
            MOVE D5-SALES TO DET-D5-SALES.
            MOVE D6-SALES TO DET-D6-SALES.
            MOVE D7-SALES TO DET-D7-SALES.
            MOVE D8-SALES TO DET-D8-SALES.
            MOVE D9-SALES TO DET-D9-SALES.
            MOVE D10-SALES TO DET-D10-SALES.
            MOVE D11-SALES TO DET-D11-SALES.
            MOVE D12-SALES TO DET-D12-SALES.
            MOVE D13-SALES TO DET-D13-SALES.
            MOVE D14-SALES TO DET-D14-SALES.
            MOVE D15-SALES TO DET-D15-SALES.
            MOVE D16-SALES TO DET-D16-SALES.
            MOVE D17-SALES TO DET-D17-SALES.
            MOVE D18-SALES TO DET-D18-SALES.
            MOVE D19-SALES TO DET-D19-SALES.
            MOVE D20-SALES TO DET-D20-SALES.
            MOVE D21-SALES TO DET-D21-SALES.
            MOVE D22-SALES TO DET-D22-SALES.
            MOVE D23-SALES TO DET-D23-SALES.
            MOVE D24-SALES TO DET-D24-SALES.

            COMPUTE WS-MM-SALES = DET-D1-SALES + DET-D2-SALES +
            DET-D3-SALES + DET-D4-SALES + DET-D5-SALES +
            DET-D6-SALES + DET-D7-SALES + DET-D8-SALES +
            DET-D9-SALES + DET-D10-SALES + DET-D11-SALES +
            DET-D12-SALES + DET-D13-SALES + DET-D14-SALES +
            DET-D15-SALES + DET-D16-SALES + DET-D17-SALES +
            DET-D18-SALES + DET-D19-SALES + DET-D20-SALES +
            DET-D21-SALES + DET-D22-SALES + DET-D23-SALES +
            DET-D24-SALES.

            MOVE WS-MM-SALES TO DET-TOT-SALES.

            MOVE COMMISSION TO WS-COMMISSION.

            MOVE WS-COMMISSION TO DET-COMMISSION.

            COMPUTE WS-SALES-COMM = WS-MM-SALES * (WS-COMMISSION/100).

            MOVE WS-SALES-COMM TO DET-TOT-SALES-F.

            COMPUTE WS-AVG-SLS-DAY = WS-MM-SALES / 24.

            MOVE WS-AVG-SLS-DAY TO DET-AVG-SLS-DAY.

            WRITE PRINT-LINE FROM DETAIL-TOTAL-LINE AFTER
               ADVANCING 1 LINE.

        0210-READ-NEXT-RECORD.
            READ SALES
            AT END SET ENDOFSALESFILE TO TRUE
            END-READ.

        0900-STOP-RUN.
              CLOSE SALES, SALESREP.
             STOP RUN.
       END PROGRAM SF4SALE.
