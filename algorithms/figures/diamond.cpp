/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>

using namespace std;

int main(void){
int ancho = 7;
int i=1;
int j=0;
int imprime = 0;
/*
...-... 7-1 6/2 = 3 imprime 3 espacios, un asterisco, 3 espacios
..---..  7-3 4/2 = 2 imprime 2 espacios, tres asteriscos, 2 espacios
.-----. 7-5 2/2 = 1  imprime 1 espacio, cinco asteriscos, 1 espacio
------- 7-7 = 0/2 = 0 imprime 7 asteriscos
*/
for(i=1;i<=7;i=i+2){
    imprime = (ancho - i) / 2;
    for(j=1;j<=imprime;j++){
        cout << " ";
    }

    for(j=1;j<=i;j++){
        cout << "*";
    }

    for(j=1;j<=imprime;j++){
        cout << " ";
    }
    cout << endl;
}

//cout << "prueba\n";
for(i=7;i>=1;i=i-2){
    imprime = (ancho - i) / 2;
    for(j=1;j<=imprime;j++){
        cout << " ";
    }
    

    for(j=1;j<=i;j++){
        cout << "*";
    }

    for(j=1;j<=imprime;j++){
        cout << " ";
    }
    
    cout << endl;
}

    // Your code here!
    /*
    for(i=0;i<=8;i++){
        cout << vector1[i] << endl;
    }
    */
  return 0;
}
