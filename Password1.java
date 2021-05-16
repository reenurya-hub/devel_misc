package string;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Password1 {

   public static void main(String[] args) {
      // TODO Auto-generated method stub

      String str="";
      int i=0;
      StringBuilder sb = new StringBuilder();
      BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
      
      System.out.print("Ingrese una cadena: ");  
      try {
         str = br.readLine();
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      for(i=0; i<str.length();i++){
         
         switch (str.charAt(i)) {
         case 'a':  sb.append("4");
         break;
         case 'e':  sb.append("3");
         break;
         case '1':  sb.append("1");
         break;
         case 'o':  sb.append("0");
         break;
         case 'u':  sb.append("8");
         break;
         default: sb.append(str.charAt(i));
         break;
         }
         
      }
      
      str=sb.toString();
      System.out.print("Cadena convertida: " + str);
   }

}
