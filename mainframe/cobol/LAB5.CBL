****** ***************************** Top of Data ******************************
==MSG> -CAUTION- Profile changed to NUMBER OFF (from NUMBER ON STD).           
==MSG>           Data does not have valid standard numbers.                    
==MSG> -CAUTION- Profile changed to CAPS ON (from CAPS OFF) because the        
==MSG>           data does not contain any lower case characters.              
==MSG> -CAUTION- Profile is set to STATS ON. Statistics did not exist for      
==MSG>           this member, but will be generated if data is saved.          
000001 000100 IDENTIFICATION DIVISION.                                         
000002 000200 PROGRAM-ID.    LAB5.                                             
000003 000300 AUTHOR.        SPARKY KEN.                                       
000004 000400 INSTALLATION.  IBM.                                              
000005 000500 DATE-WRITTEN.  JULY, 2021.                                       
000006 000600 DATE-COMPILED.                                                   
000007 000700************************************************************      
000008 000800*               PROGRAM LAB5                                      
000009 000900*  THIS PROGRAM READS THE BONUS FILE AND WRITES IT OUT            
000010 001000************************************************************      
000011 001100* THIS PROGRAM READS THE BONUS FILE AND WRITES THE RECORDS        
000012 001200* TO ANOTHER FILE, CONVERTING THE BONUS AMOUNT TO A               
000013 001300* PACKED DECIMAL FORMAT. THE OUTPUT FILE WILL NOW HAVE THE        
000014 001400* BONUS AMOUNT IN PACKED DECIMAL FORMAT (COMP-3)                  
000015 001500* WHEN VIEWED IN HEXADECIMAL FORMAT, THE NUMBERS ENDING IN        
000016 001600*     'C' MEANS POSITIVE (SINCE ITS A SIGNED COMP-3)              
000017 001700*     'D' MEANS NEGATIVE (SINCE ITS A SIGNED COMP-3)              
000018 001800*     'F' MEANS UNSIGNED COMP-3 VALUE.                            
000019 001900************************************************************      
000020 002000*          E N V I R O N M E N T   D I V I S I O N                
000021 002100************************************************************      
000022 002200 ENVIRONMENT DIVISION.                                            
000023 002300*CONFIGURATION SECTION.                                           
000024 002400*SOURCE-COMPUTER.  IBM.                                           
000025 002500*OBJECT-COMPUTER.  IBM.                                           
000026 002600 INPUT-OUTPUT SECTION.                                            
000027 002700 FILE-CONTROL.                                                    
000028 002800     SELECT INPUT-BONUS  ASSIGN TO INBONUS                        
000029 002900              FILE STATUS IS WS-INBONUS-STATUS.                   
000030 003000     SELECT OUTPUT-BONUS ASSIGN TO OUTBONUS                       
000031 003100              FILE STATUS IS WS-OUTBONUS-STATUS.                  
000032 003200************************************************************      
000033 003300*          D A T A   D I V I S I O N                              
000034 003400************************************************************      
000035 003500 DATA DIVISION.                                                   
000036 003600 FILE SECTION.                                                    
000037 003700************************************************************      
000038 003800*    INPUT-BONUS                                     INPUT        
000039 003900************************************************************      
000040 004000 FD  INPUT-BONUS                                                  
000041 004100     RECORDING MODE IS F                                          
000042 004200     RECORD CONTAINS 80 CHARACTERS                                
000043 004300     DATA RECORD IS FD-INBONUS-REC.                               
000044 004400 01  FD-INBONUS-REC                      PIC X(80).               
000045 004500************************************************************     
000046 004600*    OUTPUT-BONUS                                    OUTPUT      
000047 004700************************************************************     
000048 004800 FD  OUTPUT-BONUS                                                
000049 004900     RECORDING MODE IS F                                         
000050 005000     RECORD CONTAINS 80 CHARACTERS                               
000051 005100     DATA RECORD IS FD-OUTBONUS-REC.                             
000052 005200 01  FD-OUTBONUS-REC                      PIC X(80).             
000053 005300                                                                 
000054 005400 WORKING-STORAGE SECTION.                                        
000055 005500 01  FILLER                      PIC X(37)  VALUE                
000056 005600     'BEGIN WORKING STORAGE FOR LAB5 '.                          
000057 005700 01  WS-INBONUS-STATUS           PIC 9(02)  VALUE  ZEROS.        
000058 005800 01  WS-OUTBONUS-STATUS          PIC 9(02)  VALUE  ZEROS.        
000059 005900                                                                 
000060 006000************************************************************     
000061 006100*    ACCUMULATORS                                                
000062 006200************************************************************     
000063 006300 01  W01-ACCUMULATORS.                                           
000064 006400     05  WS-REC-IN               PIC S9(04) COMP   VALUE ZEROS.  
000065 006500     05  WS-REC-OUT              PIC S9(04) COMP   VALUE ZEROS.  
000066 006600************************************************************     
000067 006700*    SWITCHES                                                    
000068 006800************************************************************     
000069 006900 01  W02-SWITCHES.                                               
000070 007000     05  WS-INBONUS-EOF-SW      PIC X(01)    VALUE 'N'.          
000071 007100                                                                 
000072 007200************************************************************     
000073 007300*    INPUT AND OUTPUT RECORD LAYOUTS (READ INTO, WRITE FROM)     
000074 007400************************************************************     
000075 007500 01  WS-INBONUS-REC.                                             
000076 007600     05  WS-IN-STATE-CODE                 PIC X(02).             
000077 007700     05  WS-IN-LAST-NAME                  PIC X(20).             
000078 007800     05  WS-IN-FIRST-NAME                 PIC X(15).             
000079 007900     05  WS-IN-MID-INIT                   PIC X(01).             
000080 008000     05  WS-IN-BONUS-AMT                  PIC 9(7)V99.          
000081 008100     05  WS-IN-FED-EXEMPT-IND             PIC X(01).            
000082 008200     05  WS-IN-ST-EXEMPT-IND              PIC X(01).            
000083 008300     05  WS-IN-FILLER                     PIC X(31).            
000084 008400                                                                
000085 008500 01  WS-OUTBONUS-REC.                                           
000086 008600     05  WS-OUT-STATE-CODE                  PIC X(02).          
000087 008700     05  WS-OUT-LAST-NAME                   PIC X(20).          
000088 008800     05  WS-OUT-FIRST-NAME                  PIC X(15).          
000089 008900     05  WS-OUT-MID-INIT                    PIC X(01).          
000090 009000     05  WS-OUT-BONUS-AMT                   PIC 9(7)V99.        
000091 009100     05  WS-OUT-FED-EXEMPT-IND              PIC X.              
000092 009200     05  WS-OUT-ST-EXEMPT-IND               PIC X(1).           
000093 009300     05  WS-OUT-FILLER                      PIC X(31).          
000094 009400                                                                
000095 009500************************************************************    
000079 007900     05  WS-IN-MID-INIT                   PIC X(01).            
000080 008000     05  WS-IN-BONUS-AMT                  PIC 9(7)V99.          
000081 008100     05  WS-IN-FED-EXEMPT-IND             PIC X(01).            
000082 008200     05  WS-IN-ST-EXEMPT-IND              PIC X(01).            
000083 008300     05  WS-IN-FILLER                     PIC X(31).            
000084 008400                                                                
000085 008500 01  WS-OUTBONUS-REC.                                           
000086 008600     05  WS-OUT-STATE-CODE                  PIC X(02).          
000087 008700     05  WS-OUT-LAST-NAME                   PIC X(20).          
000088 008800     05  WS-OUT-FIRST-NAME                  PIC X(15).          
000089 008900     05  WS-OUT-MID-INIT                    PIC X(01).          
000090 009000     05  WS-OUT-BONUS-AMT                   PIC 9(7)V99.        
000091 009100     05  WS-OUT-FED-EXEMPT-IND              PIC X.              
000092 009200     05  WS-OUT-ST-EXEMPT-IND               PIC X(1).           
000093 009300     05  WS-OUT-FILLER                      PIC X(31).          
000094 009400                                                                
000095 009500************************************************************    
000096 009600*          P R O C E D U R E   D I V I S I O N                   
000097 009700************************************************************     
000098 009800 PROCEDURE DIVISION.                                             
000099 009900************************************************************     
000100 010000*    MAINLINE - ALL ROUTINES ARE PERFORMED FROM THIS ROUTINE     
000101 010100************************************************************     
000102 010200 P0100-MAINLINE.                                                 
000103 010300                                                                 
000104 010400     PERFORM P0200-INITIALIZE    THRU P0299-EXIT                 
000105 010500                                                                 
000106 010600     PERFORM P0300-PROCESS-INPUT THRU P0399-EXIT                 
000107 010700         UNTIL WS-INBONUS-EOF-SW = 'Z'                           
000108 010800                                                                 
000109 010900     PERFORM P0400-WRAP-UP       THRU P0499-EXIT                 
000110 011000                                                                 
000111 011100     STOP RUN.                                                   
000112 011200                                                                 
000113 011300 P0199-EXIT.                                                     
000114 011400     EXIT.                                                       
000115 011500                                                                 
000116 011600************************************************************     
000117 011700*    INITIALIZE - OPEN FILES                                     
000118 011800*                 CHECK STATUS                                   
000119 011900*                 COUNTERS                                       
000120 012000*                 INTITAL READ                                   
000121 012100************************************************************     
000122 012200 P0200-INITIALIZE.                                               
000123 012300*                                                                
000124 012400     OPEN INPUT INPUT-BONUS                                      
000125 012500     IF WS-INBONUS-STATUS = 0                                    
000126 012600       CONTINUE                                                  
000127 012700     ELSE                                                        
000128 012800       DISPLAY '**** ERROR ON OPEN INBONUS FILE '                
000129 012900       DISPLAY '**** RETURN CODE = ' WS-INBONUS-STATUS           
000130 013000       MOVE 12 TO RETURN-CODE                                     
000131 013100       STOP RUN                                                   
000132 013200     END-IF.                                                      
000133 013300                                                                  
000134 013400     OPEN OUTPUT OUTPUT-BONUS                                     
000135 013500     IF WS-OUTBONUS-STATUS = 0                                    
000136 013600       CONTINUE                                                   
000137 013700     ELSE                                                         
000138 013800       DISPLAY '**** ERROR ON OPEN OUTBONUS FILE '                
000139 013900       DISPLAY '**** RETURN CODE = ' WS-OUTBONUS-STATUS           
000140 014000       MOVE 12 TO RETURN-CODE                                     
000141 014100       STOP RUN                                                   
000142 014200     END-IF.                                                      
000143 014300                                                                  
000144 014400                                                                  
000145 014500* INITIAL READ                                                    
000146 014600     PERFORM P0900-READ-INPUT THRU P0999-EXIT.                    
000146 014600     PERFORM P0900-READ-INPUT THRU P0999-EXIT.                   
000147 014700                                                                 
000148 014800 P0299-EXIT.                                                     
000149 014900     EXIT.                                                       
000150 015000                                                                 
000151 015100************************************************************     
000152 015200*    PROCESS INPUT - MOVE FIELDS, WRITE RECORD, FETCH NEXT R     
000153 015300************************************************************     
000154 015400 P0300-PROCESS-INPUT.                                            
000155 015500                                                                 
000156 015600     INITIALIZE WS-OUTBONUS-REC                                  
000157 015700                                                                 
000158 015800     MOVE WS-IN-STATE-CODE      TO WS-OUT-STATE-CODE             
000159 015900     MOVE WS-IN-LAST-NAME       TO WS-OUT-LAST-NAME              
000160 016000     MOVE WS-IN-STATE-CODE      TO WS-OUT-FIRST-NAME             
000161 016100     MOVE WS-IN-MID-INIT        TO WS-OUT-MID-INIT               
000162 016200     MOVE WS-IN-BONUS-AMT       TO WS-OUT-BONUS-AMT              
000163 016300     MOVE WS-IN-FED-EXEMPT-IND  TO WS-OUT-FED-EXEMPT-IND         
000164 016400     MOVE WS-IN-ST-EXEMPT-IND   TO WS-OUT-ST-EXEMPT-IND          
000165 016500     MOVE WS-IN-FILLER          TO WS-OUT-FILLER                 
000166 016600                                                                 
000167 016700     PERFORM P0800-WRITE-OUTPUT THRU P0899-EXIT                  
000168 016800                                                                 
000169 016900     PERFORM P0900-READ-INPUT THRU P0999-EXIT.                   
000170 017000                                                                 
000171 017100 P0399-EXIT.                                                     
000172 017200     EXIT.                                                       
000173 017300************************************************************     
000174 017400*    WRAP UP - CLOSE THE FILES                                   
000175 017500*              CHECK STATUS                                      
000176 017600*              DISPLAY COUNTERS                                  
000177 017700************************************************************     
000178 017800 P0400-WRAP-UP.                                                  
000179 017900                                                                 
000180 018000     DISPLAY 'WS-REC-IN  = ' WS-REC-IN.                          
000181 018100     DISPLAY 'WS-REC-OUT = ' WS-REC-OUT.                         
000182 018200                                                                 
000183 018300     CLOSE INPUT-BONUS                                           
000184 018400     IF WS-INBONUS-STATUS = 0                                    
000185 018500       CONTINUE                                                  
000186 018600     ELSE                                                        
000187 018700       DISPLAY '**** ERROR ON CLOSE INBONUS FILE '               
000188 018800       DISPLAY '**** RETURN CODE = ' WS-INBONUS-STATUS           
000189 018900       MOVE 12 TO RETURN-CODE                                    
000190 019000       STOP RUN                                                  
000191 019100     END-IF.                                                     
000192 019200                                                                 
000193 019300     CLOSE OUTPUT-BONUS                                          
000194 019400     IF WS-OUTBONUS-STATUS = 0                                   
000195 019500       CONTINUE                                                  
000196 019600     ELSE                                                        
000197 019700       DISPLAY '**** ERROR ON OPEN OUTBONUS FILE '               
000198 019800       DISPLAY '**** RETURN CODE = ' WS-OUTBONUS-STATUS          
000199 019900       MOVE 12 TO RETURN-CODE                                    
000200 020000       STOP RUN                                                  
000201 020100     END-IF.                                                     
000202 020200                                                                 
000203 020300 P0499-EXIT.                                                     
000204 020400     EXIT.                                                       
000205 020500                                                                 
000206 020600************************************************************     
000207 020700*    WRITE OUTPUT RECORDS                                        
000208 020800************************************************************     
000209 020900 P0800-WRITE-OUTPUT.                                             
000210 021000     WRITE FD-OUTBONUS-REC FROM WS-OUTBONUS-REC.                 
000211 021100     IF WS-OUTBONUS-STATUS = 0                                   
000212 021200       ADD +1 TO WS-REC-OUT                                      
000213 021300     ELSE                                                        
000214 021400       DISPLAY '**** ERROR ON WRITE OUTBONUS FILE '              
000215 021500       DISPLAY '**** RETURN CODE = ' WS-OUTBONUS-STATUS           
000216 021600       DISPLAY '**** WS-REC-OUT  = ' WS-REC-OUT                   
000217 021700       MOVE 12 TO RETURN-CODE                                     
000218 021800       STOP RUN                                                   
000219 021900     END-IF.                                                      
000220 022000                                                                  
000221 022100 P0899-EXIT.                                                      
000222 022200     EXIT.                                                        
000223 022300                                                                  
000224 022400************************************************************      
000225 022500*    READ THE INPUT FILE                                          
000226 022600************************************************************      
000227 022700 P0900-READ-INPUT.                                                
000228 022800**                                                                
000229 022900**    READ INPUT-BONUS INTO W-IN-BONUS-REC                        
000230 023000**      AT END                                                    
000231 023100**         MOVE 'Y' TO WS-INBONUS-EOF-SW                        
000232 023200**      NOT AT END                                              
000233 023300**         ADD +1 TO WS-REC-IN                                  
000234 023400**    END-READ.                                                 
000235 023500**                                                              
000236 023600     READ INPUT-BONUS INTO WS-INBONUS-REC                       
000237 023700     EVALUATE TRUE                                              
000238 023800       WHEN WS-INBONUS-STATUS = 0                               
000239 023900         ADD +1 TO WS-REC-IN                                    
000240 024000       WHEN WS-INBONUS-STATUS = 10                              
000241 024100         MOVE 'Y' TO WS-INBONUS-EOF-SW                          
000242 024200       WHEN OTHER                                               
000243 024300         DISPLAY '**** ERROR ON READ INBONUS FILE '             
000244 024400         DISPLAY '**** RETURN CODE = ' WS-INBONUS-STATUS        
000245 024500         MOVE 12 TO RETURN-CODE                                 
000246 024600         STOP RUN                                               
000247 024700     END-EVALUATE.                                              
000248 024800                                                                  
000249 024900 P0999-EXIT.                                                      
000250 025000     EXIT.                                                        
****** **************************** Bottom of Data ****************************
