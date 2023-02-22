/******************************************************************************
                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.
*******************************************************************************/

#include <iostream>

using namespace std;
//
int vector[]    = {0,0,0};
int dimension = 0;
int* vec_temp= new int[dimension];
int vec_orden[] = {0,0,0};
int var = 0;
int i = 0;
int mayor = 0;
int idx_mayor = 0;
bool valida_cero = false;
//
    bool valida_ceros(int v[])//Función con dos parámetros
    {
        bool valida = false;
        cout << "Entro a validar ceros en el vector vec_orden" << endl;
        for(i=0;i<=2;i++){
            if(v[i] == 0){
                cout << "Hay ceros y devuelvo true" << endl;
                valida = true;
                break;
            }    
        }
    cout << "Voy a salir y a retornar valida" << endl;
    return valida;
    }

    void inserta_elem_vector(int p_var)
    {
        for(i=0; i<=2; i++){
            if(vector[i]==0){
                vector[i]=p_var;
                break;
            }
        }
    }


    void imprime_vector(int v[])
    {
        for(i=0; i<=2; i++){
            cout << v[i] << ",";
        }
    }

    void busca_val_vec_orden(int p_var){
        for(i=0; i<=2; i++){
            if(p_var == vec_orden[i]){
                cout << "encontrado en el indice " << i << endl;
            }
        }
        
    }

    void insert_val_vec_orden_0(int p_var){
        for(i=0; i<=2; i++){
            if(vec_orden[i] == 0){
                vec_orden[i] = p_var;
                cout << "insertado el valor " << p_var << " en el indice: " << i << endl;
                break;
            }
        }
        
    }

    void buscar_mayor_vector_ini(){
        i=0;
        do{
            if(vector[i]>= mayor){
                mayor = vector[i];
                idx_mayor = i;
            }
        i++;
        }while(i<=2);
    }


int main()
{
    //
    cout << endl << "primer paso: " << endl;
    var = 2;
    inserta_elem_vector(var);
    imprime_vector(vector);
    //
    cout << endl << "segundo paso: " << endl;
    var = 3;
    inserta_elem_vector(var);
    imprime_vector(vector);
    //
    cout << endl << "tercer paso: " << endl;
    var = 5;
    inserta_elem_vector(var);
    imprime_vector(vector);
    //
    cout << endl << "paso 1: se busca el mayor y se pone en vec_orden: " << endl;
    for(i=0; i<=2; i++){
        valida_cero = valida_ceros(vec_orden);
        if(valida_cero == true){
            cout << "todavia tiene ceros, se insertara elemento mayor" << endl;
            buscar_mayor_vector_ini();
            insert_val_vec_orden_0(mayor);
            imprime_vector(vec_orden);
            break;
        }else{
            cout << "vector de orden ya esta lleno";
        }
    }


    return 0;
}
