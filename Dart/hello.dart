// void main(){
// 	helloWorld();
// }

// void helloWorld(){
// 	print("Hello,World!");
// }



// void main(){
// 	String name = "Pavithra";
// 	int age = 25;
// 	// double weight = 70.0;
// 	// dynamic address = "hskjdkj";

// 	print('${name} is ${age}');

// }


//quiz 1
// import 'dart:io';
// void main(){
    
//     print("Enter the first number :"); 
//     print("Enter the second number :");

//     int number1 = int.parse(stdin.readLineSync()!);  
//     int number2 = int.parse(stdin.readLineSync()!);  

//     int sum = number1 + number2;
//     int difference = number2 + number1;
//     int product = number1 * number2;
//     double quotient = number1 / number2;

//     print('The sum of the number is $sum');
//     print('The diffrence betwee the number is $difference');
//     print('The product of the number is $product');
//     print('The quotient of the number is $quotient'); 
  
// }

//quiz 2
// import 'dart:io';
// void main(){
//   print("Enter the first number :"); 
//   int a = int.parse(stdin.readLineSync()!); 

//   print("Enter the second number :");
//   int b = int.parse(stdin.readLineSync()!); 

//   print("Enter the third number :");
//   int c = int.parse(stdin.readLineSync()!);


//   int x = (a*a*a) - (b*b) + c;

//   print('The result of the operation is $x');

// }


//quiz 3
// import 'dart:io';
// import 'dart:math';
// void main(){
//   print("Enter the width :"); 
//   int a = int.parse(stdin.readLineSync()!); 

//   print("Enter the length :");
//   int b = int.parse(stdin.readLineSync()!); 

//   int area = a * b;

//   int perimeter = (2*a) + (2*b);

//   double diagonal = sqrt((b^2) + (a^2));;
  

//   print('The area is $area');
//   print('The perimeter is $perimeter');
//   print('The length of diagonal is $diagonal');

// }




import 'dart:io';
import 'dart:math';
void main(){

  print("Enter a decimal number :"); 
  double a = double.parse(stdin.readLineSync()!); 

  double sr = sqrt(a);
  num cr = pow(a, 3);
  int rup = a.ceil();
  int rdown = a.floor();



  

  print('The square root is $sr');
  print('The cube root is $cr');
  print('The number rounded up is $rup');
  print('The number rounded down is $rdown');

}





