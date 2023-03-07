/*
There is a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. The player can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus or

. The player must avoid the thunderheads. Determine the minimum number of jumps it will take to jump from the starting postion to the last cloud. It is always possible to win the game.

For each game, you will get an array of clouds numbered
if they are safe or

if they must be avoided.

Example
Index the array from . The number on each cloud is its index in the list so the player must avoid the clouds at indices and . They could follow these two paths: or . The first path takes jumps while the second takes . Return

.

Function Description

Complete the jumpingOnClouds function in the editor below.

jumpingOnClouds has the following parameter(s):

    int c[n]: an array of binary integers

Returns

    int: the minimum number of jumps required

Input Format

The first line contains an integer
, the total number of clouds. The second line contains space-separated binary integers describing clouds where

.

Constraints

Output Format

Print the minimum number of jumps needed to win the game.

Sample Input 0

7
0 0 1 0 0 1 0

Sample Output 0

4

Explanation 0:
The player must avoid
and . The game can be won with a minimum of

jumps:

[jump(2).png]

Sample Input 1

6
0 0 0 0 1 0

Sample Output 1

3

Explanation 1:
The only thundercloud to avoid is
. The game can be won in

jumps:

[jump(5).png] 
*/
import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {

    // Complete the jumpingOnClouds function below.
    static int jumpingOnClouds(int[] c) {

        int jumps = 0;
    for(int i = 0; i < c.length - 1; i++){
        jumps++;
        if( i  + 2 < c.length && c[i + 2] == 0){
            i++;
        }
    }
    return jumps;
        /*int step =0;
        
        for(int i=0; i<c.length; i++){
          if( (i!=0) && (i<=c.length-3) && ((c[i+2]==0)) ){
              step++;
              i+=2;
          }
          if( (i!=0) && (i<=c.length-2) && (c[i+1]==0) ){
              step++;
              i++;
          }
          if(i==0 && c[i]==0){
             step++;
          }
          
      }

    return step;
        */
        /*int res=0;
        for(int i=0; i<c.length-1; i++)
        {
            if(c[i]==0 && (i>1) && (i<=c.length-2) && (c[i+1]==0 ||c[i-1]==0) ){
                res++;
                i++;
            }
        }
        return res;*/
    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        int n = scanner.nextInt();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        int[] c = new int[n];

        String[] cItems = scanner.nextLine().split(" ");
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        for (int i = 0; i < n; i++) {
            int cItem = Integer.parseInt(cItems[i]);
            c[i] = cItem;
        }

        int result = jumpingOnClouds(c);

        bufferedWriter.write(String.valueOf(result));
        bufferedWriter.newLine();

        bufferedWriter.close();

        scanner.close();
    }
}

