import 'dart:async';
import 'dart:math';

void main(){
  // doSthAsyncWithoutAwait();
  // doSthAsyncWithAwait();
  // doSthWithoutTryCatch();
  // doSthWithTryCatch();

  StreamExample streamExample = StreamExample();
  streamExample.generateRandomNumber();
  streamExample.listenToStream();
  streamExample.stopListeningToStream();

}


//Future way to type function
// Future <return_type> function_name (argument(s)) async{
// doSthAsync();
// }


// // without await
// Future <void> doSthAsyncWithoutAwait() async{
//   print ('Start of async function');

//   Future.delayed(Duration(seconds:2), () => print('inside async execution'));

//   print('End of async functon');
// }

// //with await
// Future <void> doSthAsyncWithAwait() async{
//   print ('Start of async function');

//   await Future.delayed(Duration(seconds:2), () => print('inside async execution'));

//   print('End of async functon');
// }


//Try Catch
// try{
// we try to do smtg
//} catch(error){
//  what should i do if i face an error
//}


// void doSthWithoutTryCatch(){
//   List<String> fruits = ['Banana', 'Melon', 'Mango'];
//   print(fruits[5]);
// }


// void doSthWithTryCatch(){
//   List<String> fruits = ['Banana', 'Melon', 'Mango'];
//   try{
//   print(fruits[5]);
//   }
//   catch(error){
//     print('Catch: $error');
//   }
// }



// [StreamController]


class StreamExample{
  StreamController _controller = StreamController();
  late StreamSubscription _streamSubscription;

//generate random number in 15 secs (interval: 1 sec)
  void generateRandomNumber(){
    DateTime currentTime = DateTime.now();
    DateTime EndTime = currentTime.add(Duration(seconds: 15));


     Timer.periodic(Duration(seconds: 1), (timer) {
      if(DateTime.now().isBefore(EndTime)){
      int randomNumber = Random().nextInt(10);
      print('Random Number generated is: $randomNumber');
      _controller.add(randomNumber);
      } 
      else{
        timer.cancel();
      }
     });   

  }

  //create a listener
  void listenToStream(){
   _streamSubscription = _controller.stream.listen((randomNumber) { 
    print('Listening to stream events: $randomNumber');
   });
  }

  Future<void> stopListe() async {
    await Future.delayed(
      Duration(seconds: 10), () => _streamSubscription.cancel());
  }

}