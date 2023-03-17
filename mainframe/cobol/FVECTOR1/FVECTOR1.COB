       IDENTIFICATION DIVISION.
       PROGRAM-ID.     GFILE02.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL DEUDORES ASSIGN TO "./deudores.dat"
                  ORGANIZATION INDEXED
                  ACCESS MODE DYNAMIC
                  RECORD KEY IS DEU_ID
                  ALTERNATE RECORD KEY DEU_NOMBRE WITH DUPLICATES
                  ALTERNATE RECORD KEY DEU_ALT_2 WITH DUPLICATES
                  STATUS ST-FILE.
       DATA DIVISION.
       FILE SECTION.
      * -----------------------------------------------------------
       FD DEUDORES.
       01 REG-DEUDORES.
           03 DEU_ID               PIC 9(20).
           03 DEU_NOMBRE           PIC X(60).
           03 DEU_APELLIDO         PIC X(60).
           03 DEU_SALDO            PIC 9(10)V9(2).
           03 DEU_CATEGORIA        PIC X.

           03 DEU_ALT_2.
               05 DEU_CATEGORIA_2  PIC X.
               05 DEU_NOMBRE_2     PIC X(60).
           03 FILLER               PIC X(300).
      * -----------------------------------------------------------
       WORKING-STORAGE SECTION.
           01 ST-FILE              PIC XX.
           01 X                    PIC X.
           01 FSALDO               PIC $9(10),99.
      *
           01 TOTAL-FACTURA PIC S9(6).
      *
           01 MESES.
               03 MES OCCURS 12 TIMES.
                   05 MES-NOMBRE   PIC X(20).
      *
           01 VARIABLES.
               03 VALORES OCCURS 12 TIMES.
                   05 VALORDIA OCCURS 31 TIMES.
                       07 VALOR-VENTA PIC S9(09)V999.
      *
           01 FECHA-AUX.
               02 AA   PIC 9999.
               02 MM   PIC 99.
               02 DD   PIC 99.
      *
       PROCEDURE DIVISION.
       MAIN.
      *     PERFORM ABRO-ARCHIVO.
      *     PERFORM LEO-DATOS     THRU F-LEO-DATOS.
      *     PERFORM CIERRO-ARCHIVO.
            PERFORM VECTOR1.
       VECTOR1.
           MOVE "ENERO"        TO MES-NOMBRE(01).
           MOVE "FEBRERO"      TO MES-NOMBRE(02).
           MOVE "MARZO"        TO MES-NOMBRE(03).
           MOVE "ABRIL"        TO MES-NOMBRE(04).
           MOVE "MAYO"         TO MES-NOMBRE(05).
           MOVE "JUNIO"        TO MES-NOMBRE(06).
           MOVE "JULIO"        TO MES-NOMBRE(07).
           MOVE "AGOSTO"       TO MES-NOMBRE(08).
           MOVE "SEPTIEMBRE"   TO MES-NOMBRE(09).
           MOVE "OCTUBRE"      TO MES-NOMBRE(10).
           MOVE "NOVIEMBRE"    TO MES-NOMBRE(11).
           MOVE "DICIEMBRE"    TO MES-NOMBRE(12).
      *
           MOVE 20230228 TO FECHA-AUX.
           MOVE 155700 TO VALOR-VENTA(2, 12).
           MOVE 100000 TO TOTAL-FACTURA.
      *
           COMPUTE VALOR-VENTA(MM, DD) = VALOR-VENTA(2, 12) +
               TOTAL-FACTURA.
      *
      *     ADD TOTAL-FACTURA TO VALOR-VENTA(MM,DD).
      *
           DISPLAY VALOR-VENTA(MM, DD).
           ACCEPT X.
           STOP RUN.
      *
       ABRO-ARCHIVO.
           OPEN I-O DEUDORES.
           IF ST-FILE > "07"
              DISPLAY "ERROR ABRIENDO EL ARCHIVO"
              ACCEPT X
           END-IF.
       LEO-DATOS.
           INITIALIZE REG-DEUDORES.
           START DEUDORES KEY IS NOT LESS THAN DEU_ID.
           READ DEUDORES NEXT RECORD.
           IF ST-FILE = "99"
               GO TO LEO-DATOS
           END-IF.
           IF ST-FILE > "07"
               DISPLAY "ERROR LEYENDO EL ARCHIVO"
           END-IF.
       MUESTRO-DATOS.
           MOVE DEU_SALDO TO FSALDO.
           DISPLAY "ID_DEUDOR: "   LINE 10 COL 5.
           DISPLAY "NOMBRE:    "   LINE 11 COL 5.
           DISPLAY "APELLIDO:  "   LINE 12 COL 5.
           DISPLAY "SALDO:     "   LINE 13 COL 5.
           DISPLAY "CATEGORIA: "   LINE 14 COL 5.
           DISPLAY DEU_ID          LINE 10 COL 30.
           DISPLAY DEU_NOMBRE      LINE 11 COL 30.
           DISPLAY DEU_APELLIDO    LINE 12 COL 30.
      *     DISPLAY DEU_SALDO     LINE 13 COL 30.
           DISPLAY FSALDO          LINE 13 COL 30.
           DISPLAY DEU_CATEGORIA   LINE 14 COL 30.
       F-LEO-DATOS.
           EXIT.
       CIERRO-ARCHIVO.
           CLOSE DEUDORES.
       END PROGRAM GFILE02.
