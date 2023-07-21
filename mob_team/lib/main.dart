import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'detailpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      title: 'Mobile Team',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _mobileTeam = [];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/team_info.json');
    final data = await json.decode(response);
    setState(() {
      _mobileTeam = data["team_info"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Mobile Team',
        ),
      ),
      body: ListView.builder(
          itemCount: _mobileTeam.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                 shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(width: 2)),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/photos/people/${_mobileTeam[index]["name"]}.png'),
                ),
                title: Text(
                  _mobileTeam[index]["name"],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(team: _mobileTeam[index]),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}

