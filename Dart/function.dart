// import 'dart:io';

// add(double a, double b){
//  return a + b;
// }

// subtract(double a, double b){
//   return a-b;
// }

// multiply(double a, double b){
//   return a * b;
// }

// divide(double a, double b){
//  return a / b;
// }

// void main() {

// print('Enter first number;');
// double a = double.parse(stdin.readLineSync()!); 

// print('Enter second number;');
// double b = double.parse(stdin.readLineSync()!); 

// print('What is your operation? if add:1, if subtraction:2, if multiply:3, if divide:4 :');
//  double operation = double.parse(stdin.readLineSync()!); 


//  double result = ( (operation == 1 ? add(a,b) : operation == 2 ? subtract(a, b) : operation == 3 ? multiply(a, b) : operation == 4 ? divide(a, b) : 999) );

//  print(result);

  
// }

import 'dart:io';


int add(int a, int b){
 return a + b;
}

int subtract(int a, int b){
  return a-b;
}

int multiply(int a, int b){
  return a * b;
}

int divide(int a, int b){
 return a ~/ b;
}

typedef OperationFunctionType = int Function(int,int);
int performOperation(int a, int b, OperationFunctionType operation ){   

  return operation (a,b);

}

void main(){

   print(performOperation(6, 2, add));
   print(performOperation(6, 2, subtract));
   print(performOperation(6, 2, multiply));
   print(performOperation(6, 2, divide));


}


//take from user

// import 'dart:io';


// int add(int a, int b){
//  return a + b;
// }

// int subtract(int a, int b){
//   return a-b;
// }

// int multiply(int a, int b){
//   return a * b;
// }

// int divide(int a, int b){
//  return a ~/ b;
// }

// typedef OperationFunctionType = int Function(int,int);
// int performOperation(int a, int b, OperationFunctionType operation ){   

//   return operation (a,b);

// }

// void main(){

//   print('Enter first number;');
// int a = int.parse(stdin.readLineSync()!); 

// print('Enter second number;');
// int b = int.parse(stdin.readLineSync()!);

// String pri

//    print(performOperation(a, b, add));
//    print(performOperation(a, b, subtract));
//    print(performOperation(a, b, multiply));
//    print(performOperation(a, b, divide));




// }


