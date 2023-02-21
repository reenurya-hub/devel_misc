#include <iostream>
using namespace std;

int vector1[] = {1,2,3,4,10,9,80,70,19};
int vector2[] = {0,0,0,0,0,0};
int var = 0;
int temp_idx = 0;
int i=0;

int main(void){
    // Your code here!
    /*
    for(i=0;i<=8;i++){
        cout << vector1[i] << endl;
    }
    */
    var = 2;
    for(i=0;i<=5;i++){
        if(vector2[i]==0){
            vector2[i] = var;
            break;
        }else{
            if(var > vector2[i]){
              temp_idx = i;
              
            }
        }
    }

    for(i=0;i<=8;i++){
        cout << vector1[i] << endl;
    }

    
}
