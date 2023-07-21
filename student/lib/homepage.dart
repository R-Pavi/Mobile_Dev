import 'package:flutter/material.dart';
import 'package:student/student_details.dart';

class Student {
  final String name;
  final int age;  

  Student(this.name, this.age);
}


class MyHomePage extends StatelessWidget {  
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students List"),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Text("Student 1"),
            ],
          ),
          ElevatedButton(
            child: const Text("Next Page"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecondPage()));
            },
          )
        ],
      ),
    );
  }
}
