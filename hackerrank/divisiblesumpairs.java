/*
Given an array of integers and a positive integer , determine the number of pairs where and + is divisible by

.

Example


Three pairs meet the criteria: and

.

Function Description

Complete the divisibleSumPairs function in the editor below.

divisibleSumPairs has the following parameter(s):

    int n: the length of array 

    int ar[n]: an array of integers
    int k: the integer divisor

Returns
- int: the number of pairs

Input Format

The first line contains
space-separated integers, and .
The second line contains space-separated integers, each a value of

.

Constraints

Sample Input

STDIN           Function
-----           --------
6 3             n = 6, k = 3
1 3 2 6 1 2     ar = [1, 3, 2, 6, 1, 2]

Sample Output

 5

Explanation

Here are the
valid pairs when

:


*/
import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {

    // Complete the divisibleSumPairs function below.
    static int divisibleSumPairs(int n, int k, int[] ar) {
        int pair=0;
        int lim1=1;
        /*for(int i=0; i<n; i++){
            for(int j=lim1;j<n;j++){
                if(ar[i]<ar[j] || ar[j]<ar[i]){
                    if( ( (ar[i]+ ar[j]) % k) == 0 ){
                        pair++;
                    }
                }
            }
        lim1++;
        }*/
        int count=0;
for(int i=0;i<(ar.length)-1;i++)
    for(int j=i+1;j<(ar.length);j++)
        if((ar[i]+ar[j])%k==0)
            count++;
return count;
    
    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        String[] nk = scanner.nextLine().split(" ");

        int n = Integer.parseInt(nk[0]);

        int k = Integer.parseInt(nk[1]);

        int[] ar = new int[n];

        String[] arItems = scanner.nextLine().split(" ");
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        for (int i = 0; i < n; i++) {
            int arItem = Integer.parseInt(arItems[i]);
            ar[i] = arItem;
        }

        int result = divisibleSumPairs(n, k, ar);

        bufferedWriter.write(String.valueOf(result));
        bufferedWriter.newLine();

        bufferedWriter.close();

        scanner.close();
    }
}
