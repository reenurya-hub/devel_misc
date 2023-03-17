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
                                                                                
 F3=Exit   F4=Prompt   F5=Refresh   F9=Retrieve   F10=Cursor   F11=Toggle       
 F16=Repeat find       F17=Repeat change          F24=More keys                 
                                         (C) COPYRIGHT IBM CORP. 1981, 2013.    
