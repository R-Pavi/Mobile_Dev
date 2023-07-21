import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {


  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 5));
    return "Some Data";
  }
 

  const MyHomePage({super.key, required this.title});
  final String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        ),
      body: 
      FutureBuilder(
        builder: (
          BuildContext context, AsyncSnapshot <String> snapshot) {
        if (snapshot.hasData){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(snapshot.data!),
          );
        }
        else{
          return
          const CircularProgressIndicator();
        }

      }),
     
     
    );
  }
}
