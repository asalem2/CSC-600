/* File:   P1.cpp
   Author: Eric*/

#include <cstdlib>
#include <iostream>
#include <vector> 

using namespace std;

int maxlen(int a[] , int size){
     //Initialize variables needed
    int oldValue = a[0], currentStreak = 1, value, highest_Streak;
    //For loop to count the highest consecutive length
    for (int i = 1; i < size; i++, oldValue = value, value = a[i])
        oldValue == value ? currentStreak++ : currentStreak > highest_Streak ? highest_Streak = currentStreak : currentStreak = 1;
    //Return the highest consecutive length
    return highest_Streak; 
}

int main(){
    //Initial array and size of the array
    int a[] = {1,1,1,2,3,3,5,6,6,6,6,7,9}, size = sizeof(a)/sizeof(int); 
    //Print our the  value that is returned from the maxlen() function
    cout << maxlen(a, size);  
}


