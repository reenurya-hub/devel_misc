package revisor_cmd;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

public class main {

	public static String  rutaArchs = "C:\\Users\\rurquijo\\Desktop\\CIMS_MGT_INF_TRW_20221004_1";
	public static String  valorCIMS = "CIMS_MGT_INF_TRW_20221004_1";
	public static String  usuario   = "KPAZAN";
	public static Boolean valida    = false;
	public static String  issue     = "24400";
	public static int linea = 0;
	public static char caracter;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// try-catch block to handle exceptions
		String raizCIMS="";
		
		Boolean haydat=false;
		Boolean haypdc=false;
	    Boolean hayspp=false;
		Boolean haysql=false;
		Boolean haytpl=false;
		String extension=null;
		//
        try {
         
        	//BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
            //System.out.println("Ingrese la ruta del nombre del archivo a validar: ");
            //str = reader.readLine();
        	//\\dat\\202210_INSERTA_CIMS_MGT_INF_TRW_20221004_1.sql
        	
            // Objeto file (cims) a partir de la carpeta inicial del CIMS
            File cims = new File(rutaArchs);

            // nombre de la carpeta inicial CIMS
            raizCIMS = cims.getName();

            // Display the file Name of the file object
            System.out.println("Archivo raiz CIMS : " + raizCIMS);
  
            
            valida = validaNomCIMS(valorCIMS);
    		if(valida)
    		{
    			System.out.println("Nombre del CIMS: " + valorCIMS + " dentro de carpeta: " +  raizCIMS + "...OK");
    		}
    		else
    		{
    			System.out.println("Nombre del CIMS: " + valorCIMS + " dentro de carpeta: " +  raizCIMS + "...FALLO");
    		}
            
                      
            //obtenemos la lista de archivos o directorios en este caso
            File contenidoCIMS[] = cims.listFiles();
            //System.out.println("List archivos y directorios en este directorio:");
            for(File fcontenidoCIMS : contenidoCIMS) {
               //System.out.println("Nombre de archivo: "+file.getName());
               //System.out.println("Ruta de archivo: "+file.getAbsolutePath());
               //System.out.println("Size :"+file.getTotalSpace());
               //System.out.println(" ");
              
               if (fcontenidoCIMS.getName().equals("dat"))
               {
            	   //haydat = true;
            	   validaDatCIMS(fcontenidoCIMS);
            	   
               }
               if (fcontenidoCIMS.getName().equals("pdc"))
               {
            	   validaPdcCIMS(fcontenidoCIMS);
               }

               if (fcontenidoCIMS.getName().equals("spp"))
               {
            	   validaSppCIMS(fcontenidoCIMS);
               }

               if (fcontenidoCIMS.getName().equals("sql"))
               {
            	   haysql = true;
               }

               
            }
        }
        catch (Exception e) {
            System.err.println(e.getMessage());
        }
	}

	//Se valida el nombre de la carpeta del CIMS
	//public static boolean validaNomCIMS(File fCIMS) {
	public static Boolean validaNomCIMS(String pValCims) {
		//
		Boolean val = false;
		//
		val = pValCims.contains(valorCIMS);
		//		
		return val;
	}
	
	public static void validaDatCIMS(File fCIMS) {

		//
		System.out.println("Carpeta dat del CIMS:");
		//
    	File datArchs = new File(rutaArchs + "\\dat");
    	File contenidoDAT[] = datArchs.listFiles();
    	//
    	for(File file : contenidoDAT) {
    	      String fileName = file.toString();
              
    	      valida = fileName.contains(valorCIMS);
    	      
    	      if(valida)
    		  {
    				System.out.println("Nombre del CIMS: " + valorCIMS + " dentro del archivo: " +  fileName + "...OK");
    		  }
    		  else
    		  {
    				System.out.println("Nombre del CIMS: " + valorCIMS + " dentro del archivo: " +  fileName + "...FALLO");
    		  }	      
    	      
    	      
    	      /*
    	       * PARA VALIDAR LA EXTENSION
    	      int index = fileName.lastIndexOf('.');
    	      if(index > 0) {
    	        extension = fileName.substring(index + 1);
    	        System.out.println(fileName + "\t" + extension);
    	      }
    	      if (extension.equals("tpl")) {
    	    	  haytpl = true;
    	      }
    	      */
    	      
    	}
    	System.out.println(" ");
    	
    	/*if(!haytpl) {
    		System.out.println("No hay archivos .tpl");
    	}*/
	}

	public static void validaPdcCIMS(File fCIMS){
	
	//
		System.out.println("Carpeta pdc del CIMS:");
		//
    	File datArchs = new File(rutaArchs + "\\pdc");
    	File contenidoPDC[] = datArchs.listFiles();
    	//
    	for(File archivo : contenidoPDC) {
    		String nomArchivo = archivo.toString();
    		valida = buscaTextoArchivo( nomArchivo, usuario);
            if(valida) { 
                System.out.println("Nombre del archivo " + nomArchivo + " con nombre de desarrollador: " + usuario + "... OK");
            }
            else
            {
                System.out.println("Nombre del archivo " + nomArchivo + " con nombre de desarrollador: " + usuario + "... FALLO");
            }
            System.out.println(" ");
    	      //filename = rutaArchs + "\\pdc\\" + fileName;
    	      
    	      //System.out.println(method(fileName));//rutaArchs + "\\pdc\\" + fileName));
    	       /*   Scanner scanner;
				try {
					scanner = new Scanner(file);
    	          String issue2     = "24400";
    	      	Boolean valida2   = false;
    	      	String line="";
    	          //now read the file line by line...
    	          int lineNum = 0;
    	          while (scanner.hasNextLine()) {
    	        	    
    	              line = scanner.nextLine();
    	              //System.out.println(line);
    	              lineNum++;
    	              valida2 = line.contains(issue2);
    	              if(valida2) { 
    	                  System.out.println("ho hum, i found it on line " +lineNum);
    	              }
    	      
    	          }
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
*/
    	}
	}
	

	public static void validaSppCIMS(File fCIMS){
		
	//
		System.out.println("Carpeta spp del CIMS:");
		//
    	File datArchs = new File(rutaArchs + "\\spp");
    	File contenidoSPP[] = datArchs.listFiles();
    	//
    	for(File archivo : contenidoSPP) {
    		String nomArchivo = archivo.toString();
    		valida = buscaTextoArchivo( nomArchivo, issue);
            if(valida) { 
                System.out.println("Nombre del archivo " + nomArchivo + " con nombre del issue " + issue + "... OK");
            }
            else
            {
                System.out.println("Nombre del archivo " + nomArchivo + " con nombre del issue " + issue + "... FALLO");
            }
            validaCaracterGuionArchivo(nomArchivo);
            System.out.println(" ");
    	}
	}

	
	private static Boolean buscaTextoArchivo(String pNomArchivo, String textoBusca)
    {
        Boolean result=false;
        // Declaring object of StringBuilder class
        StringBuilder builder = new StringBuilder();
 
        // try block to check for exceptions where
        // object of BufferedReader class us created
        // to read filepath
        try (BufferedReader buffer = new BufferedReader(
                 new FileReader(pNomArchivo))) {
 
            String str;
 
            int lineNum = 0;
            while (((str = buffer.readLine()) != null)) {
            	result = str.contains(textoBusca);
            	lineNum++;
            	if(result) {
            		
            		break;
            	}
            }
        }
 
        // Catch block to handle the exceptions
        catch (IOException e) {
 
            // Print the line number here exception occurred
            // using printStackTrace() method
            e.printStackTrace();
        }
 
        // Returning a string
        return result;
    }

	static int countChar(String str, char x)
	{
	    int count = 0;
	    int n = 10;
	    for (int i = 0; i < str.length(); i++)
	        if (str.charAt(i) == x)
	            count++;
	    return count;
	}
	
	private static int validaCaracterGuionArchivo(String pNomArchivo)
    {
        int result=0;
        int linea;
        
        //
        StringBuilder builder = new StringBuilder();
        //
        try (BufferedReader buffer = new BufferedReader(
                 new FileReader(pNomArchivo))) {
            String texto;
            // 
            int lineNum = 0;
            while (((texto = buffer.readLine()) != null)) {
            	caracter = '-';
            	result = countChar(texto, caracter);
            	if((result>=3) && (result<=37) )
            	{
            		linea = lineNum --;
            		System.out.println("Falta caracteres guion en la linea " + lineNum);
            	}
            	lineNum++;
            }
        }
 
        // Catch block to handle the exceptions
        catch (IOException e) {
 
            // Print the line number here exception occurred
            // using printStackTrace() method
            e.printStackTrace();
        }
 
        // Returning a string
        return result;
    }
	

	
}
	
