import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: 
    Column(
      children: [
      Flexible(
        flex: 4,
        child: 
        Row(
          children: [ 
          Flexible(
            flex:2,
          child: Container(
            color: Colors.orange,
            
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.black,
           
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.pink,
          
          ),
        ),],
        ),
         ),

        Flexible(
          flex: 2,
          child: 
          Row(
          children: [ 
          Flexible(
            flex:1,
          child: Container(
            color: Colors.green,
            
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.purple,
           
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.amber,
          
          ),
        ),],
        ),),
        Flexible(
        flex:1,
        child: 
        Row(children: [
              Flexible(
          flex: 4,
          child: Container(
            color: Colors.pink,
           
          ),
        ),

            Flexible(
          flex: 4,
          child: Container(
            color: Colors.blue,
           
          ),
        ),
        ],    
       )),

       Flexible(
        flex: 1,
        child: Row(children: [
          Flexible(
          flex: 1,
          child: Container(
            color: Colors.red,
           
          ),
        ),
        ],))

     
          
    ]),
  )));
}
    
    // home: Scaffold(
    // appBar: AppBar(
    //   title: const Text("My Layout"),
    // ),
  //   body: Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: const [
  //           Padding(
  //             padding: EdgeInsets.all(10),
  //             child: Text(
  //               "Welcome to My Layout!",
  //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
  //             ),
  //           ),
  //         ],
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: const [
  //           FlutterLogo(),
  //           SizedBox(
  //             width: 16,
  //           ),
  //           FlutterLogo(),
  //           SizedBox(
  //             width: 16,
  //           ),
  //           FlutterLogo()
  //         ],
  //       ),
  //       SizedBox(height: 36),
  //       const Text(
  //         "This is a simple example of how to use Flutter widget to build layouts. With the help of the Row and Column widgets, we can easily arrange widgets horizontally and vertically",
  //         style: TextStyle(fontSize: 16),
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: const [
  //           Icon(
  //             Icons.favorite,
  //             color: Colors.red,
  //           ),
  //           Icon(
  //             Icons.star,
  //             color: Colors.yellow,
  //           ),
  //           Icon(
  //             Icons.thumb_up,
  //             color: Colors.blue,
  //           )
  //         ],
  //       )
  //     ],
  //   ),
  // )
