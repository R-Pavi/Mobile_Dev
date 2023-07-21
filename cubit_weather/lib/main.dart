import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      home: const MyHomePage(title: 'Weather App'),
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
  final TextEditingController _textEditingController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),                    
                    labelText: 'City',
                    
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherStateInitial());

 static  _weathers <String> ['Sunny', 'Cloudy', 'Rainy', 'Stormy', 'Foggy'];
  

  void fetchWeather(String location) {
    
   
    final int randomIndex = Random().nextInt(_weathers.length);
  }
}

abstract class WeatherState {}

class WeatherStateInitial extends WeatherState {}

class WeatherStateLoading extends WeatherState {}

class WeatherStateLoaded extends WeatherState {
  WeatherStateLoaded(this.state, this.temp);

  final String state;
  final int temp;
}
