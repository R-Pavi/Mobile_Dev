import 'dart:async';

Stream <int> fibonacci(){
  final controller = StreamController<int>();
  int a = 0; int b = 1;
   controller.add(0);
  controller.add(1);
  Timer timer;
  timer = Timer.periodic(Duration(milliseconds:500), (timer) {
    final next = a+b;
    a = b;
     b = next;
     controller.add(next);
   });
   Timer(Duration(seconds:15), (){
    timer.cancel();
    controller.close();
   });
   return controller.stream;
}


void main(){
  fibonacci().listen((number) {
    print(number);
  }, onDone: (){
    print("Finished generating");
  });
}
