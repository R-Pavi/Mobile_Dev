// import 'dart:io';
// void main(){

// print('Enter your age;');
// int age = int.parse(stdin.readLineSync()!); 

// print('Enter your salary (RM):');
// int salary = int.parse(stdin.readLineSync()!); 

// print('Enter your job title:');
// String? job = stdin.readLineSync();


// print('Enter your marital status(married/not married):');
// String? marital = stdin.readLineSync();


// String result = ((age >= 18) && (job == 'Software Engineer') && (salary > 60000 || marital == 'not married') ) ? 'Candidate fits the criteria' : 'Candidate does not fit the criteria';

// print(result);

// }


// import 'dart:io';
// void main(){

// print('Enter your age;');
// final int age = int.parse(stdin.readLineSync()!); 

// print('Enter your salary (RM):');
// final int salary = int.parse(stdin.readLineSync()!); 

// print('Enter your job title:');
// final String? job = stdin.readLineSync();


// print('Enter your marital status(married/not married):');
// final String? marital = stdin.readLineSync();


// final String result = ((age >= 18) && (job == 'Software Engineer') && (salary > 60000 || marital == 'not married') ) ? 'Candidate fits the criteria' : 'Candidate does not fit the criteria';

// print(result);

// }

// //second way
// void main(){

//  const int age = 25;
//   double salary = 50000;
//   String job_title = 'Software Engineer';
//   bool isMarried = false;


// bool isAdult = age >= 18;
// bool highSalary = salary > 60000;
// bool isSoftwareEngineer = job_title == 'Software Engineer';
// bool isNotMarried = !isMarried;

// bool meetsCriteria = isAdult && isSoftwareEngineer && (highSalary || isNotMarried);

// String result = meetsCriteria ? 'Candidate fits the criteria' : 'Candidate does not fit the criteria';

// print(result);
  

// }




// void main(){
//   String name = 'Pavi';
//   int age =  24;

//   // \n new line
//   // \t tab
//   // \& dollar sign
//   // \' single quote
//   // \'' double quote

//   String result = 'My name is $name,\n and I\'m $age years old';

//   print(result.toUpperCase());
// }



// import 'dart:io';


// void main() {

//   final int value1 = 10;
//   final int value2 = 5;
//   final int value3 = value1 + value2;

  

//   print(value3);
  
// }



import 'dart:io';

int myFunc({int parameter1, String parameter2}){
   print('object');
  return 0;
  }

void main() {
  myFunc(parameter1:10, parameter2: '20');
}