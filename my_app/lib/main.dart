import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key:key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: const Text ('Hello')),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isNight = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _isNight ? Colors.blueAccent : Colors.amber,
          title: Text(_isNight ? "Good Night" : "Good Morning"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,         
          children: [
              Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.sunny),
                  ),
                  Padding(padding: EdgeInsets.all(8), child: Text("Day")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.nightlight_round)),
                  Padding(padding: EdgeInsets.all(8), child: Text("Night")),
                ],
              ),
            ),


     Visibility(
      visible: _isNight,
       child: CachedNetworkImage(
          imageUrl:
          "https://cdn-icons-png.flaticon.com/512/3094/3094125.png",
           placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          height: 200,
          width: 100,
       ),
     ) ,
       Visibility(
      visible: !_isNight,
       child: CachedNetworkImage(
          imageUrl:          
          "https://cdn-icons-png.flaticon.com/512/2570/2570483.png",
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          height: 200,
          width: 100,
       ),
     ),


          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(_isNight ? Icons.sunny : Icons.nightlight_round),
          onPressed: () {
            setState(() {
              _isNight = !_isNight;
            });
          },
        ));
  }
}


  //my if else
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(_text),
  //     ),
      
  //       floatingActionButton: FloatingActionButton(          
  //       child: Icon(_text == 'Good Morning' ?
  //         Icons.nightlight_round :
  //         Icons.wb_sunny_rounded
  //         ),
  //       onPressed: (){
  //         setState(() {
  //         if (_text == 'Good Morning'){             
  //           _text = 'Good Night'; 
  //            } 
  //           else{
  //             _text = 'Good Morning'; 
  //           }          
  //         });
                 
  //       },
          
  //     )
  //     );

  // }




