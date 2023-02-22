/******************************************************************************
                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.
*******************************************************************************/

#include <iostream>
#include <cstring>
#include <string>

using namespace std;
//


int main()
{

    char chars[]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
    int      h[]={ 1 , 3 , 1 , 3 , 1 , 4 , 1 , 3 , 2 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 7 };
    string word = "zaba";
    int i=0;
    int j=0;
    //
    const int length = word.length();
    // declaring character array (+1 for null terminator)
    char* char_array = new char[length + 1];
    // copying the contents of the
    // string to char array
    strcpy(char_array, word.c_str());
    
    int indice = 0;
    int valor_letra = 0;
    
    while (char_array[indice] != '\0')
    {
        char actual = char_array[indice];
        for(j=0;j<=25;j++){
            char letra = chars[j];
            if(actual == letra){
                cout << "he identificado la letra " << actual << " en el indice" << j << endl;
                if(h[j] > valor_letra){
                valor_letra = h[j];    
                cout << " valor letra: " << valor_letra << endl;
                }
            }
        }
        indice++;
    }


    
}
