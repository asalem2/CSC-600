/* File:   P4.cpp
 * Author: Eric
 */

#include <cstdlib>
#include <iostream>
#include <vector>

using namespace std;

int BigInt(int number){
     //Find the first,second and third place values.
    int secondValue = number % 100, digitOne = number / 100, digitTwo = secondValue / 10, digitThree = number % 10; 
    //Multidimesional array holding number prints
    string numberMatrix[7][10] = {
        {" @@@@@ ","  @@   "," @@@@  "," @@@@@ ","   @@@ "," @@@@@@","  @@   ","@@@@@@@"," @@@@@ "," @@@@@ "},
        {"@@   @@"," @@@   ","@    @ ","@     @","  @@ @@","@      "," @@    ","     @@","@@   @@","@    @@"},
        {"@@   @@","  @@   ","     @ ","      @"," @@  @@","@      ","@@     ","    @@ ","@@   @@","@    @@"},
        {"@@   @@","  @@   ","  @@@@ "," @@@@@@","@@@@@@@","@@@@@@ ","@@     ","   @@  ","@@@@@@@"," @@@@@@"},
        {"@@   @@","  @@   "," @     ","      @","     @@","      @"," @@@@@ ","  @@   ","@@   @@","     @@"},
        {"@@   @@","  @@   "," @     ","@     @","     @@","      @","@     @"," @@    ","@@   @@","     @@"},
        {" @@@@@ ","@@@@@@ "," @@@@@@"," @@@@@@","     @@","@@@@@@ "," @@@@@ ","@@     ","@@@@@@@","     @@"}             
    };
    //For loop to print the number 7 x 7
    for (int height = 0; height < 7; height++){
        cout << numberMatrix[height][digitOne] << " ";
        cout << numberMatrix[height][digitTwo] << " ";
        cout << numberMatrix[height][digitThree] << " ";
        cout <<endl;
    }
}

int main(){
    //Initial number
    int number = 170; 
    //Call BigInt() function
    BigInt(number);
}

