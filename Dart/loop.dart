

void main(){


for(int dayNumber=1; dayNumber<= 7; dayNumber++){
  String dayName = 'Unknown';

switch(dayNumber){

 case 1 : dayName= "Sunday";
 break;

 case 2: dayName= "Monday";
 break;

 case 3: dayName= "Tuesday";
 break;

case 4: dayName= "Wednesday";
 break;

case 5: dayName= "Thursday";
 break;

case 6: dayName= "Friday";
 break;

case 7: dayName= "Saturday";
 break;

default: "It is not even a day";

}

String dayType = 'Unknown';
if (dayNumber == 2 || dayNumber == 3 || dayNumber == 4 || dayNumber == 5 || dayNumber == 6 ){
  dayType = "Weekday";
}
else{
   dayType = "Weekend";
}

print("$dayName is $dayType");


}
}


//my way or highway
// void main(){


// for(int i=1; i<= 7; i++){

// switch(i){

//  case 1 : print("Sunday");
//  break;

//  case 2: print("Monday");
//  break;

//  case 3: print("Tuesday");
//  break;

// case 4: print("Wednesday");
//  break;

// case 5: print("Thursday");
//  break;

// case 6: print("Friday");
//  break;

// case 7: print("Saturday");
//  break;

// default: print("It is not even a day");

// }

// }


// }