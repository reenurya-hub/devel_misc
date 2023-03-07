/*
You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

Example

The maximum height candles are units high. There are of them, so return

.

Function Description

Complete the function birthdayCakeCandles in the editor below.

birthdayCakeCandles has the following parameter(s):

    int candles[n]: the candle heights

Returns

    int: the number of candles that are tallest

Input Format

The first line contains a single integer,
, the size of .
The second line contains space-separated integers, where each integer describes the height of

.

Constraints

Sample Input 0

4
3 2 1 3

Sample Output 0

2

Explanation 0

Candle heights are
. The tallest candles are units, and there are of them. 
*/
import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {

    // Complete the birthdayCakeCandles function below.
    static int birthdayCakeCandles(int[] ar) {
        int may=0;
        int vel=0;
        int i=0;
        for( i=0; i<ar.length;i++){
            if(ar[i]>may){
                may=ar[i];
            }
        }
        for( i=0; i<ar.length;i++){
            if(ar[i]==may){
                vel++;
            }
        }
        return vel;
    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        int arCount = scanner.nextInt();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        int[] ar = new int[arCount];

        String[] arItems = scanner.nextLine().split(" ");
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        for (int i = 0; i < arCount; i++) {
            int arItem = Integer.parseInt(arItems[i]);
            ar[i] = arItem;
        }

        int result = birthdayCakeCandles(ar);

        bufferedWriter.write(String.valueOf(result));
        bufferedWriter.newLine();

        bufferedWriter.close();

        scanner.close();
    }
}
