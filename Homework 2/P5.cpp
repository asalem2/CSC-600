///* File:   P5.cpp
// * Author: Eric */

#include <cstdlib>
#include <iostream>
#include <vector>

using namespace std;

int bsi(int a[], int n, int keyValue){
    //Initial variables
    int low = 0, high = n-1, mid;
    //Search for the key iteratively 
    while (low <= high){
        mid = (low + high) / 2;
        if (a[mid] == keyValue){return mid;}
        (a[mid] > keyValue) ? high = mid - 1 : low = mid + 1;
    }
}

int bsr(int a[], int n, int keyValue){
    //Initial variables
    int low = 0, high = n-1, mid;
    //Error if this is true
    if (low > high) {return 0;}
    else{
        //Search for the key recursively
        mid = (low + high) / 2;
        if (keyValue == a[mid]) {return mid;}
        else if (keyValue < a[mid]) {return bsr(a, mid, keyValue);}
        else{return bsr(a, mid + 2, keyValue);}
    }
}

int main(){
    //Initial variables
    int n = 1000000, K = 1;
    int a[n];
    //assign values to a[]
    for (int i = 0; i < n; i++){a[i] = i;}
    //binary search recursive
    for (int i = 0; i < n; i++){if (bsi(a,n,i) != i){cout << "\nERROR";}}
    //binary search iterative
    for (int i = 0; i < n; i++){if (bsr(a,n,i) != i){cout << "\nERROR";}}
}

