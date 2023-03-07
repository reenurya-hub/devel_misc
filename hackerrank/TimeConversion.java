/*
Given a time in

-hour AM/PM format, convert it to military (24-hour) time.

Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
- 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

Example

Return '12:01:00'.

    Return '00:01:00'.

Function Description

Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.

timeConversion has the following parameter(s):

    string s: a time in 

    hour format

Returns

    string: the time in 

    hour format

Input Format

A single string
that represents a time in -hour clock format (i.e.: or

).

Constraints

    All input times are valid

Sample Input 0

07:05:45PM

Sample Output 0

19:05:45


*/
import java.io.*;
import java.math.*;
import java.text.*;
import java.util.*;
import java.util.regex.*;

public class Solution {

    /*
     * Complete the timeConversion function below.
     */
    static String timeConversion(String s) {
        /*
         * Write your code here.
         */
        String ampm= s.substring(8,10);
        String nh="";
        String hor=s.substring(2,8);
        String rest=s.substring(2,8);
        int h = Integer.parseInt(s.substring(0,2));
        if(ampm.equals("PM")){
            if(h==12)
            {
                nh="12";
            }
            else
            {
            h= h+12;
            nh= Integer.toString(h);
            }
        }
        if(ampm.equals("AM")){
            if(h==12)
            {
            nh="00";
            }
            else
            {
               nh= "0"+ Integer.toString(h);
            }
        }
        String miString = nh + rest;
        return miString;
    }

    private static final Scanner scan = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
        BufferedWriter bw = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        String s = scan.nextLine();

        String result = timeConversion(s);

        bw.write(result);
        bw.newLine();

        bw.close();
    }
}
