import 'dart:async';

void main(){
  StreamFibo streamFibo =  StreamFibo();
  streamFibo.generateFibonacciSequence();
  streamFibo.listenToStream();
}



class StreamFibo{
  StreamController _controller = StreamController();
  late StreamSubscription _streamSubscription;

void generateFibonacciSequence(){  
  
 

 void listenToStream(){
  _streamSubscription = _controller.stream.listen((fibonacci){
    print('Listening: $fibonacci');
  });
 }

}


