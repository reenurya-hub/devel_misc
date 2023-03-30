       IDENTIFICATION DIVISION.
       PROGRAM-ID. CRSFEMP.
      *
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL EMPRESA ASSIGN TO "EMPRESA.DAT"
           ORGANIZATION IS SEQUENTIAL
           FILE STATUS IS WS-FILE-STATUS.
      *
       DATA DIVISION.
       FILE SECTION.
       FD EMPRESA.
       01 REG-EMPRESA.
           03 EMP-TIP-ID       PIC X(20).
           03 EMP-ID           PIC X(20).
           03 EMP-RSOCIAL      PIC X(30).
           03 EMP-RCCIAL       PIC X(30).
           03 EMP-SIGLA        PIC X(10).
           03 EMP-DIR1         PIC X(30).
           03 EMP-DIR2         PIC X(30).
           03 EMP-DIR3         PIC X(30).
           03 EMP-TEL1         PIC X(20).
           03 EMP-TEL2         PIC X(20).
           03 EMP-TEL3         PIC X(20).
           03 EMP-CIUDAD       PIC X(20).
           03 EMP-DEPTO        PIC X(20).
           03 EMP-EMAIL1       PIC X(30).
           03 EMP-EMAIL2       PIC X(30).
           03 EMP-EMAIL3       PIC X(30).
           03 EMP-WEB1         PIC X(30).
           03 EMP-WEB2         PIC X(30).
           03 EMP-RLEGAL       PIC X(60).
           03 EMP-FILLER       PIC X(500).
      *
       WORKING-STORAGE SECTION.
      *
       01  ST-FILE                PIC XX.
       01  WS-SWITCH.
               05  WS-FILE-STATUS PIC XX.
                   88      WS-EMP-NOFILE     VALUE '00'.
                   88      WS-EMPRESA-OPEN   VALUE '41'.
       01 WS-EMPRESA.
           03 WS-EMP-TIP-ID       PIC X(20).
               88 WS-TIP-ID-BLANK     VALUE SPACE.
           03 WS-EMP-ID           PIC X(20).
               88 WS-EMP-ID-BLANK     VALUE SPACE.
           03 WS-EMP-RSOCIAL      PIC X(30).
               88 WS-EMP-RSOC-BNK     VALUE SPACE.
           03 WS-EMP-RCCIAL       PIC X(30).
           03 WS-EMP-SIGLA        PIC X(10).
           03 WS-EMP-DIR1         PIC X(30).
               88 WS-EMP-DIR1-BNK     VALUE SPACE.
           03 WS-EMP-DIR2         PIC X(30).
           03 WS-EMP-DIR3         PIC X(30).
           03 WS-EMP-TEL1         PIC X(20).
               88 WS-EMP-TEL1-BNK     VALUE SPACE.
           03 WS-EMP-TEL2         PIC X(20).
           03 WS-EMP-TEL3         PIC X(20).
           03 WS-EMP-CIU          PIC X(20).
               88 WS-EMP-CIU-BNK      VALUE SPACE.
           03 WS-EMP-DEPTO        PIC X(20).
               88 WS-EMP-DEPTO-BNK    VALUE SPACE.
           03 WS-EMP-EMAIL1       PIC X(30).
               88 WS-EMP-EML1-BNK     VALUE SPACE.
           03 WS-EMP-EMAIL2       PIC X(30).
           03 WS-EMP-EMAIL3       PIC X(30).
           03 WS-EMP-WEB1         PIC X(30).
           03 WS-EMP-WEB2         PIC X(30).
           03 WS-EMP-RLEGAL       PIC X(60).
               88 WS-EMP-RLGL-BNK     VALUE SPACE.

       01  SCREEN-CHARS.
           03  GUIONES            PIC X(80) VALUES ALL "-".
           03  OPC                PIC 9.
           03  INS_OPCION         PIC X(18)
           VALUE 'Ingrese opcion [ ]'.
           03  OPCIONES1          PIC X(42)
           VALUE '1=LISTAR - 2=CREAR - 3=MODIFICAR - 4=SALIR'.
           03  MSG-NO-FILE        PIC X(30)
           VALUE 'NO HAY UNA EMPRESA CREADA.    '.
           03  MSG-EMPTY-FIELD    PIC X(30)
           VALUE 'CAMPO INGRESADO VACIO.        '.
           03  MSG-REG-OK         PIC X(30)
           VALUE 'REGISTROS INSERTADOS.         '.
           03  MSG-GENERICO       PIC X(30).
           03  MSG-SP             PIC X(30) VALUE SPACES.
           03  HEADER1    PIC X(20)
           VALUE 'F A C T O - EMPRESAS'.
           03  X                  PIC X.
           03  SP                 PIC X(39) VALUE SPACES.
       PROCEDURE DIVISION.
       0100-START.
           PERFORM 0100-SHOW-DISPLAY.
           ACCEPT X.
           STOP RUN.

       0100-SHOW-DISPLAY.
                   DISPLAY " "           LINE 01 COL 01 ERASE EOS
                   HEADER1               LINE 03 COL 30
                   GUIONES               LINE 04 COL 01
                   "1-Tipo Id  :"    LINE 05 COL 03
                   "2-Id Nro.  :"    LINE 05 COL 39
                   "3-R.Social :"    LINE 06 COL 03
                   "4-R.Ccial  :"    LINE 07 COL 03
                   "5-Siglas   :"    LINE 08 COL 03
                   "6-Dir 1    :"    LINE 08 COL 39
                   "7-Dir 2    :"    LINE 09 COL 03
                   "8-Dir 3    :"    LINE 10 COL 03
                   "9-Tel 1    :"    LINE 11 COL 03
                   "10-Tel 2   :"    LINE 11 COL 39
                   "11-Tel 3   :"    LINE 12 COL 03
                   "12-Ciudad  :"    LINE 12 COL 39
                   "13-Depto   :"    LINE 13 COL 03
                   "14-Email 1 :"    LINE 13 COL 39
                   "15-Email 2 :"    LINE 14 COL 03
                   "16-Email 3 :"    LINE 15 COL 03
                   "17-Web 1   :"    LINE 16 COL 03
                   "18-Web 2   :"    LINE 17 COL 03
                   "19-Rep.Leg.:"    LINE 18 COL 03
                   GUIONES               LINE 22 COL 01.
                   PERFORM 0110-OPCIONES.
       0110-OPCIONES.
           DISPLAY INS_OPCION            LINE 02 COL 01
                   OPCIONES1             LINE 23 COL 01.
           ACCEPT OPC LINE 02 COL 17 PROMPT.
           EVALUATE OPC
               WHEN 1
                   PERFORM 0120-VAL-FILE-EXISTS
               WHEN 2
                   OPEN OUTPUT EMPRESA
                   PERFORM 0130-ENT-WS-TIP-ID
                   THRU    0220-GRAB-FILE
                   CLOSE EMPRESA
                   DISPLAY MSG-REG-OK    LINE 02 COL 41
                   ACCEPT  X             LINE 02 COL 40 PROMPT
                   DISPLAY MSG-SP        LINE 02 COL 41
                   PERFORM 0100-SHOW-DISPLAY
                   GO TO 0110-OPCIONES
               WHEN 4
                   PERFORM 9990-END-PROGRAM
               WHEN OTHER
                   GO TO 0110-OPCIONES
           END-EVALUATE.
       0120-VAL-FILE-EXISTS.
           OPEN INPUT EMPRESA
               IF WS-EMP-NOFILE
      *             CONTINUE
                  PERFORM 0230-READ-FILE
               ELSE
                  DISPLAY MSG-NO-FILE     LINE 02 COL 41
                  CLOSE EMPRESA
                  GO TO 0110-OPCIONES
               END-IF.
       0130-ENT-WS-TIP-ID.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-TIP-ID-BLANK TO TRUE
           ACCEPT WS-EMP-TIP-ID LINE 05 COL 15 PROMPT
           IF WS-TIP-ID-BLANK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0130-ENT-WS-TIP-ID.
       0135-ENT-WS-EMP-ID.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-EMP-ID-BLANK TO TRUE
           ACCEPT WS-EMP-ID LINE 05 COL 51 PROMPT
           IF WS-EMP-ID-BLANK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0135-ENT-WS-EMP-ID.
       0140-ENT-WS-EMP-RSOC.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-EMP-RSOC-BNK TO TRUE
           ACCEPT WS-EMP-RSOCIAL LINE 06 COL 15 PROMPT
           IF WS-EMP-RSOC-BNK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0140-ENT-WS-EMP-RSOC.
       0145-ENT-WS-EMP-RCCIAL.
           ACCEPT WS-EMP-RCCIAL LINE 07 COL 15 PROMPT.
       0150-ENT-WS-EMP-SIGLA.
           ACCEPT WS-EMP-SIGLA LINE 08 COL 15 PROMPT.
       0155-ENT-WS-EMP-DIR1.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-EMP-DIR1-BNK TO TRUE
           ACCEPT WS-EMP-DIR1 LINE 08 COL 51 PROMPT
           IF WS-EMP-DIR1-BNK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0155-ENT-WS-EMP-DIR1.
       0160-ENT-WS-EMP-DIR2.
           ACCEPT WS-EMP-DIR2 LINE 09 COL 15 PROMPT.
       0165-ENT-WS-EMP-DIR3.
           ACCEPT WS-EMP-DIR3 LINE 10 COL 15 PROMPT.
       0165-ENT-WS-EMP-TEL1.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-EMP-TEL1-BNK TO TRUE
           ACCEPT WS-EMP-TEL1 LINE 11 COL 15 PROMPT
           IF WS-EMP-TEL1-BNK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0165-ENT-WS-EMP-TEL1.

       0170-ENT-WS-EMP-TEL2.
           ACCEPT WS-EMP-TEL2 LINE 11 COL 51 PROMPT.
       0175-ENT-WS-EMP-TEL3.
           ACCEPT WS-EMP-TEL3 LINE 12 COL 15 PROMPT.
       0180-ENT-WS-EMP-CIU.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-EMP-CIU-BNK TO TRUE
           ACCEPT WS-EMP-CIU  LINE 12 COL 51 PROMPT
           IF WS-EMP-CIU-BNK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0180-ENT-WS-EMP-CIU.
       0185-ENT-WS-EMP-DEPTO.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-EMP-DEPTO-BNK TO TRUE
           ACCEPT WS-EMP-DEPTO  LINE 13 COL 15 PROMPT
           IF WS-EMP-DEPTO-BNK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0185-ENT-WS-EMP-DEPTO.
       0190-ENT-WS-EMP-EMAIL1.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-EMP-EML1-BNK TO TRUE
           ACCEPT WS-EMP-EMAIL1  LINE 13 COL 51 PROMPT
           IF WS-EMP-EML1-BNK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0190-ENT-WS-EMP-EMAIL1.
       0195-ENT-WS-EMP-EMAIL2.
           ACCEPT WS-EMP-EMAIL2 LINE 14 COL 15 PROMPT.
       0200-ENT-WS-EMP-EMAIL3.
           ACCEPT WS-EMP-EMAIL3 LINE 15 COL 15 PROMPT.
       0205-ENT-WS-EMP-WEB1.
           ACCEPT WS-EMP-WEB1 LINE 16 COL 15 PROMPT.
       0210-ENT-WS-EMP-WEB2.
           ACCEPT WS-EMP-WEB2 LINE 17 COL 15 PROMPT.
       0215-ENT-WS-EMP-RLEGAL.
           DISPLAY MSG-SP LINE 02 COL 41
           SET WS-EMP-RLGL-BNK TO TRUE
           ACCEPT WS-EMP-RLEGAL  LINE 18 COL 15 PROMPT
           IF WS-EMP-RLGL-BNK
               DISPLAY MSG-EMPTY-FIELD    LINE 02 COL 41
               ACCEPT X LINE 02 COL 40 PROMPT
               GO TO 0215-ENT-WS-EMP-RLEGAL.
       0220-GRAB-FILE.
           MOVE WS-EMP-TIP-ID  TO EMP-TIP-ID.
           MOVE WS-EMP-ID      TO EMP-ID.
           MOVE WS-EMP-RSOCIAL TO EMP-RSOCIAL.
           MOVE WS-EMP-RCCIAL  TO EMP-RCCIAL.
           MOVE WS-EMP-SIGLA   TO EMP-SIGLA.
           MOVE WS-EMP-DIR1    TO EMP-DIR1.
           MOVE WS-EMP-DIR2    TO EMP-DIR2.
           MOVE WS-EMP-DIR3    TO EMP-DIR3.
           MOVE WS-EMP-TEL1    TO EMP-TEL1.
           MOVE WS-EMP-TEL2    TO EMP-TEL2.
           MOVE WS-EMP-TEL3    TO EMP-TEL3.
           MOVE WS-EMP-CIU     TO EMP-CIUDAD.
           MOVE WS-EMP-DEPTO   TO EMP-DEPTO.
           MOVE WS-EMP-EMAIL1  TO EMP-EMAIL1.
           MOVE WS-EMP-EMAIL2  TO EMP-EMAIL2.
           MOVE WS-EMP-EMAIL3  TO EMP-EMAIL3.
           MOVE WS-EMP-WEB1    TO EMP-WEB1.
           MOVE WS-EMP-WEB2    TO EMP-WEB2.
           MOVE WS-EMP-RLEGAL  TO EMP-RLEGAL.
           WRITE REG-EMPRESA.

       0230-READ-FILE.
           IF WS-EMPRESA-OPEN
               CONTINUE
           ELSE
           OPEN INPUT EMPRESA
           END-IF.
      *     IF WS-FILE-STATUS > "07"
      *        STRING "ERROR ABRIENDO ARCH EMPRESA " WS-FILE-STATUS
      *        DELIMITED BY SIZE
      *        INTO MSG-GENERICO
      *        DISPLAY MSG-GENERICO LINE 02 COL 41
      *     ELSE
      *    OPEN INPUT EMPRESA.
           READ EMPRESA.
           DISPLAY EMP-TIP-ID   LINE 05 COL 15.
           MOVE EMP-TIP-ID      TO WS-EMP-TIP-ID.
           MOVE EMP-ID      TO WS-EMP-ID.
           MOVE EMP-RSOCIAL TO WS-EMP-RSOCIAL.
           MOVE EMP-RCCIAL  TO WS-EMP-RCCIAL.
           MOVE EMP-SIGLA   TO WS-EMP-SIGLA.
           MOVE EMP-DIR1    TO WS-EMP-DIR1.
           MOVE EMP-DIR2    TO WS-EMP-DIR2.
           MOVE EMP-DIR3    TO WS-EMP-DIR3.
           MOVE EMP-TEL1    TO WS-EMP-TEL1.
           MOVE EMP-TEL2    TO WS-EMP-TEL2.
           MOVE EMP-TEL3    TO WS-EMP-TEL3.
           MOVE EMP-CIUDAD  TO WS-EMP-CIU.
           MOVE EMP-DEPTO   TO WS-EMP-DEPTO.
           MOVE EMP-EMAIL1  TO WS-EMP-EMAIL1.
           MOVE EMP-EMAIL2  TO WS-EMP-EMAIL2.
           MOVE EMP-EMAIL3  TO WS-EMP-EMAIL3.
           MOVE EMP-WEB1    TO WS-EMP-WEB1.
           MOVE EMP-WEB2    TO WS-EMP-WEB2.
           MOVE EMP-RLEGAL  TO WS-EMP-RLEGAL.
           DISPLAY WS-EMP-TIP-ID   LINE 05 COL 15.
           DISPLAY WS-EMP-ID       LINE 05 COL 51.
           DISPLAY WS-EMP-RSOCIAL  LINE 06 COL 15.
           DISPLAY WS-EMP-RCCIAL   LINE 07 COL 15.
           DISPLAY WS-EMP-SIGLA    LINE 08 COL 15.
           DISPLAY WS-EMP-DIR1     LINE 08 COL 51.
           DISPLAY WS-EMP-DIR2     LINE 09 COL 15.
           DISPLAY WS-EMP-DIR3     LINE 10 COL 15.
           DISPLAY WS-EMP-TEL1     LINE 11 COL 15.
           DISPLAY WS-EMP-TEL2     LINE 11 COL 51.
           DISPLAY WS-EMP-TEL3     LINE 12 COL 15.
           DISPLAY WS-EMP-CIU      LINE 12 COL 51.
           DISPLAY WS-EMP-DEPTO    LINE 13 COL 15.
           DISPLAY WS-EMP-EMAIL1   LINE 13 COL 51.
           DISPLAY WS-EMP-EMAIL2   LINE 14 COL 15.
           DISPLAY WS-EMP-EMAIL3   LINE 15 COL 15.
           DISPLAY WS-EMP-WEB1     LINE 16 COL 15.
           DISPLAY WS-EMP-WEB2     LINE 17 COL 15.
           DISPLAY WS-EMP-RLEGAL   LINE 18 COL 15.
      *     END-IF.
       9990-END-PROGRAM.
           IF WS-EMPRESA-OPEN
           CLOSE EMPRESA.
           STOP RUN.
       END PROGRAM CRSFEMP.
