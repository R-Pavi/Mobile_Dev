//working code
import 'package:flutter/material.dart';
import 'dart:math';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Color? color = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
            child: GestureDetector(
          onTap: () {
            setState(() {
              color =
                  Colors.primaries[Random().nextInt(Colors.primaries.length)];
            });
          },
          child: Container(
            height: 150,
            width: 150,
            color: color,
          ),
        )));
  }
}


//mentor code






























//my code
// import 'dart:math';

// import 'package:flutter/material.dart';


// late Color? color = Colors.yellow;

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//           body: 
//           Center(
//             child:
             
//             GestureDetector(
              
//                 onTap: () {
//             setState(() {
//               color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
//             });
//           },
//               child: Container(
                    
//                     color: color,
//                     height: 100,
//                     width: 100,
                   
                    
//                   ),
//             ),
//           )),
//     ),
//   );
// }

