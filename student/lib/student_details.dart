import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: const Text("Students Details"),),
      body: Column(
        children: [
          ElevatedButton(child: const Text("Back"),
          onPressed:(){
            Navigator.of(context).pop();
          }, ),
        ],
      ),
    );
  }
}