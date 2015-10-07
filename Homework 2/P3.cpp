/* File:   P2.cpp
 * Author: Eric */

#include <cstdlib>
#include <iostream>
#include <vector> 

using namespace std;

vector <int> reduce(int a[] , int size){
    //Initialize variables and the vector we will need
    int max = 0, sMax = 0, tMax = 0; vector <int> temp;
    //For loop to find the 3 largest numbers in the array 
    for(int i = 0; i < size; i++){if(a[i] > max){max = a[i];} if(a[i] > sMax && a[i] < max){sMax = a[i];} if(a[i] > tMax && a[i] < sMax) {tMax = a[i];}}
    //For loop to construct a vector that is reduce
    for(int i = 0; i < size; i++){ if (a[i] != max && a[i] != sMax && a[i] != tMax){temp.push_back(a[i]);}}
    //Return reduced vector
    return temp;
}

int main(){
    //Initialize variables and the vector we will need
    int a[] =  {9,1,1,6,7,1,2,3,3,5,6,6,6,6,7,9}, size = sizeof(a)/sizeof(int); 
    vector <int> array = reduce(a, size); 
    //Print out the reduce vector and its size that is returned from the reduce() function
    cout << "a = ("; for(int i = 0; i < array.size() - 1; i++){cout << array[i] << ",";} cout << array[array.size() - 1] << ") and  n = " << array.size();
}

