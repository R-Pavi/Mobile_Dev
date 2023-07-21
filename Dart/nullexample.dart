
// explanation
// void function(int? theNumber){

//   //scenario 1:
//   //accessing the properties or methods of objects

//   print(theNumber?.abs());


//   //scenario 2
//   //defining default value

//   print((theNumber?? 0).abs());


//   //scenario 3
//   //using conditions

//   if(theNumber != null){
//     theNumber.abs();
//   }
//   else{
//     print('the number is null');
//   }


//   //scenario 4
//   //we tell compiler that the value might not be null (using the !)

//   print(theNumber!.abs());

// }

// void main(){
//   function(null);
// }



void main(){
  


  int? numDays = 3;
  int? numMiles = 140 ;
  int? dailyRate = 5;



if (numDays != null && numMiles != null && dailyRate != null) {

if(numMiles <= 100){
   print(numDays * dailyRate);
}

else{
  print(numDays * dailyRate + (numMiles - 100) * 0.25);
}
}

else {
  print("It is null input, check!");
}

}



  // switch(numMiles){

     
  //    case (numMiles <= 100) : ( numDays * dailyRate) ;
  //    break;

  //    case (numMiles > 100) : (numDays * dailyRate + (numMiles - 100) * 0.25);
  //    break;

  // }



  // int? numDays = 5;
  // int? numMiles = 140 ;
  // int? dailyRate = 5;
