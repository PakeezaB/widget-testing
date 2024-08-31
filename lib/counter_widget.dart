import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('You have pushed the button this many times:'),
        Text('$_counter',
            key: const Key('counter'),
            style: Theme.of(context).textTheme.headlineMedium),
        ElevatedButton(
          key: const Key('increment'),
          onPressed: _incrementCounter,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
