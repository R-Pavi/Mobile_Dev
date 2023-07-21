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
    return BlocProvider(
      create: (BuildContext context) {
        return CounterCubit();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  // final CounterCubit _cubit = CounterCubit();

  void _incrementCounter() {
    // _cubit.increment();
    final CounterCubit counterCubit = BlocProvider.of<CounterCubit>(context);
    counterCubit.increment();
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
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocListener<CounterCubit, int>(
              listenWhen: (int prevState, int newState) {
                return newState % 5 == 0;
                //or
                // final bool toListen = newState % 5 == 0;
                // return toListen;
              },
              listener: (BuildContext context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('The number is a multiple of 5'),
                  ),
                );
              },
              child: BlocBuilder<CounterCubit, int>(
                  bloc: BlocProvider.of<CounterCubit>(context),
                  // buildWhen: (preState, newState) {
                  //   return newState % 2 == 0;
                  // },
                  builder: (BuildContext context, int counter) {
                    return Text(
                      '$counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }),
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

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);

    //or
    //final int currentState = state;
    //final int newState = currentState + 1;
    //emit(newState);
  }
}


