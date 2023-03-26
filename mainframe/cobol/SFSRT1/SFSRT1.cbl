        IDENTIFICATION DIVISION.
        PROGRAM-ID. SFSRT1.
       
        ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
        SELECT LFSFSRT1 ASSIGN TO "VEGFRUT.DAT"
        FILE STATUS IS FILE-CHECK-KEY
        ORGANIZATION IS LINE SEQUENTIAL.
        
        SELECT SORTEDFILE ASSIGN TO "NVEGFRUT.DAT"
        ORGANIZATION IS LINE SEQUENTIAL.
        
        SELECT WORKFILE ASSIGN TO "WORKFILE.TMP".
        
        DATA DIVISION.
        FILE SECTION.
        
        FD LFSFSRT1.
        01 VEGFRUT-DETAILS      PIC X(27).
       
        FD SORTEDFILE.
        01 SORTED-DETAILS       PIC X(27).
       
        SD WORKFILE.
        01 WORKREC.
            03 CODVF		PIC 9(5).
            03 DESC		PIC X(20).
            03 UNID		PIC X(2).
        
        WORKING-STORAGE SECTION.
        01  WS-WORK-AREAS.
             05  FILE-CHECK-KEY   PIC X(2).
        
        
        PROCEDURE DIVISION.
        0100-READ-FILE.

            OPEN INPUT LFSFSRT1.
            SORT WORKFILE ON ASCENDING KEY CODVF
      *    SORT WORKFILE ON DESCENDING KEY DESC
      *    SORT WORKFILE ON ASCENDING KEY UNID
            USING LFSFSRT1 GIVING SORTEDFILE.
		 
        PERFORM 9000-END-PROGRAM.
		   
        0100-END.
	   
	   
        9000-END-PROGRAM.
            CLOSE LFSFSRT1.	
            STOP RUN.        
        
        END PROGRAM SFSRT1.