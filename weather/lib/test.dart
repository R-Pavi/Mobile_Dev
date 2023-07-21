import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return WeatherCubit();
      },
      child: MaterialApp(
        title: 'Weather app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WeatherScreen(),
      ),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather app'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<WeatherCubit>(context).fetchWeather(
                      _textEditingController.text,
                    );
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                )
              ],
            ),
            BlocBuilder<WeatherCubit, WeatherState>(
              builder: (
                BuildContext context,
                WeatherState state,
              ) {
                if (state is WeatherStateLoading) {
                  return const CircularProgressIndicator();
                } else if (state is WeatherStateLoaded) {
                  return Text(state.state);
                }
                return const Text('No weather state yet');
              },
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherStateInitial());

  Future<void> fetchWeather(String location) async {
    if (location.isEmpty) {
      emit(WeatherStateInitial());
      return;
    }

    emit(WeatherStateLoading());

    try {
      const apiKey = 'f7f074bb318f4de1b047203459d3984f';
      final url =
          'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$apiKey&units=metric';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final temperature = jsonResponse['main']['temp'];
        final description = jsonResponse['weather'][0]['description'];
        final weatherState = '$description, ${temperature.toString()}°C';
        emit(WeatherStateLoaded(weatherState));
      } else {
        emit(WeatherStateError('Failed to fetch weather data.'));
      }
    } catch (e) {
      emit(WeatherStateError('Failed to fetch weather data: $e'));
    }
  }
}

class WeatherStateError extends WeatherState {
  WeatherStateError(this.errorMessage);

  final String errorMessage;
}
abstract class WeatherState {}

class WeatherStateInitial extends WeatherState {}

class WeatherStateLoading extends WeatherState {}

class WeatherStateLoaded extends WeatherState {
  WeatherStateLoaded(this.state);

  final String state;
}