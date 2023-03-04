 Columns . . . :    1  71            Edit                  REINALDO1/MODTLCOBOL 
 SEU==>                                                                   CALC6 
 FMT CB ......-A+++B+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
        *************** Beginning of data ************************************* 
0001.00        IDENTIFICATION DIVISION.                                         
0002.00        PROGRAM-ID. PRUEBA.                                              
0003.00        ENVIRONMENT DIVISION.                                            
0004.00        DATA DIVISION.                                                   
0005.00        WORKING-STORAGE SECTION.                                         
0006.00        77 WKS-NUM-1           PIC S9(5)V99.                             
0007.00        77 WKS-NUM-2           PIC S9(5)V9(02).                          
0008.00        77 WKS-RESULTADO       PIC S9(6)V99.                             
0009.00        77 WKS-CH1             PIC X(7).                                 
0010.00        77 WKS-CH2             PIC X(7).                                 
0011.00        77 WKS-OPCION          PIC A(01).                                
0012.00        77 WKS-ELECCION        PIC 9(1).                                 
0013.00        77 WKS-RES-FORMAT      PIC -ZZZZZZZZZZ.99.                       
0014.00        PROCEDURE DIVISION.                                              
0015.00        00001-MI-SECCION SECTION.                                        
0016.00        00001-MAIN.                                                      
0017.00            PERFORM 00000-CALCULADORA UNTIL WKS-ELECCION = 2.            
0018.00            STOP RUN.                                                    
0019.00        00000-CALCULADORA.                                               
0020.00            DISPLAY "1-. USAR LA CALCULADORA, 2-. SALIR".                
0021.00            ACCEPT WKS-ELECCION.                                         
0022.00            IF WKS-ELECCION = 1                                          
0023.00               PERFORM 00001-PEDIR-DATOS                                 
0024.00               PERFORM 00002-EJECUTAR-OPERACION                          
0025.00            ELSE                                                         
0026.00            IF WKS-ELECCION = 2                                          
0027.00               NEXT SENTENCE                                             
0028.00            ELSE                                                         
0029.00               DISPLAY "OPCION INVALIDA".                                
0030.00        00001-PEDIR-DATOS.                                               
0031.00            DISPLAY "***** CALCULADORA *****".                           
0032.00            DISPLAY "INGRESE NUMERO 1: ".                                
0033.00            ACCEPT WKS-CH1.                                              
0034.00            DISPLAY "INGRESE NUMERO 2: ".                                
0035.00            ACCEPT WKS-CH2.                                              
0036.00            MOVE FUNCTION TRIM(WKS-CH1) TO WKS-NUM-1.                    
0037.00            MOVE FUNCTION TRIM(WKS-CH2) TO WKS-NUM-2.                    
0038.00            DISPLAY "INDIQUE LA OPERACION".                              
0039.00            DISPLAY "S=SUMA, R=RESTA, M=MULTIPLICA, D=DIVIDE".           
0040.00            ACCEPT WKS-OPCION.                                           
0041.00        00002-EJECUTAR-OPERACION.                                        
0042.00            IF WKS-OPCION = "S"                                          
0043.00               ADD WKS-NUM-1 TO WKS-NUM-2 GIVING WKS-RESULTADO           
0044.00            ELSE                                                         
0045.00            IF WKS-OPCION = "R"                                          
0046.00               SUBTRACT WKS-NUM-1 FROM WKS-NUM-2 GIVING WKS-RESULTADO    
0047.00            ELSE                                                         
0048.00            IF WKS-OPCION = "M"                                          
0049.00               MULTIPLY WKS-NUM-1 BY WKS-NUM-2 GIVING WKS-RESULTADO      
0050.00            ELSE                                                         
0051.00            IF WKS-OPCION = "D"                                          
0052.00               DIVIDE WKS-NUM-1 INTO WKS-NUM-2 GIVING WKS-RESULTADO      
0053.00            ELSE                                                         
0054.00               DISPLAY "OPERACION INVALIDA, VERIFIQUE".                  
0055.00            IF WKS-OPCION = "S" OR "R" OR "M" OR "D"                     
0056.00               MOVE WKS-RESULTADO TO WKS-RES-FORMAT                      
0057.00               DISPLAY WKS-RES-FORMAT                                    
        ****************** End of data **************************************** 
