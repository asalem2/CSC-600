/* File:   P2.cpp
 * Author: Eric */

#include <cstdlib>
#include <iostream>
#include <vector>
#include <iomanip> 

using namespace std;

void y(double x1, double y1, double x2, double y2, double x3, double y3, double X){
    //Initial variables ax^2 + bx + c
    double a1 = x1 * x1, b1 = x1, c1 = 1, d1 = -y1,
    a2 = x2 * x2, b2 = x2, c2 = 1, d2 = -y2,
    a3 = x3 * x3, b3 = x3, c3 = 1, d3 = -y3,
    inc = (x3 - x1) / 39, counter = 1, point;
    //Cramers rule to get x,y,z coefficients
    double D = (a1 * b2 * c3 + b1 * a3 * c2 + c1 * a2 * b3) - (a1 * c2 * b3 + b1 * a2 * c3 + c1 * b2 * a3);
    double x = ((b1 * c3 * d2 + c1 * b2 * d3 + d1 * c2 * b3) - (b1 * c2 * d3 + c1 * b3 * d2 + d1 * b2 * c3)) / D;
    double y = ((a1 * c2 * d3 + c1 * a3 * d2 + d1 * a2 * c3) - (a1 * c3 * d2 + c1 * a2 * d3 + d1 * c2 * a3)) / D;
    double z = ((a1 * b3 * d2 + b1 * a2 * d3 + d1 * b2 * a3) - (a1 * b2 * d3 + b1 * a3 * d2 + d1 * a2 * b3)) / D;
    //For loop to get and print the 40 points
    for(point = x1; point < x3; point += inc, counter++){
        double yPoint = x * (point * point) + y * (point) + z;
        cout << counter << ":\t(" << setprecision(3) << point << " , " << setprecision(3) << yPoint << ")" << endl;
    }
}

int main() {
    //Initial variables
    double x1, y1, x2, y2, x3, y3, x = 40;
    //get input for x1, y1, x2, y2, x3, y3
    cout <<"Enter x1, y1, x2, y2, x3, y3: ";
    cin >> x1 >> y1 >> x2 >>y2 >> x3 >> y3;
    //Call function y
    y(x1, y1, x2, y2, x3, y3, x);
}

