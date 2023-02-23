/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>

using namespace std;

int main()
{
    cout<<"Hello World"  <<endl;

/*
00  05
*****
*   * 
*   *
*   *
*****
50  55
*/

for(int i=0; i<=4; i++){
    for(int j=0; j<=4; j++){
        if((i==0) || (i==4)){
            cout << "*";
        }else{
            if((j==0)||(j==4)){
                cout << "*";
            }else{
                cout << " ";
            }
        }
        
    }
    cout << endl;
}
    return 0;
}
