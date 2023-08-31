import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: const Center(
        //Abra error por este const
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '54',
              style: TextStyle(
                  fontSize: 80, fontWeight: FontWeight.w200, color: Colors.red),
            ),
            Text(
              'Numero de clicks',
              style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w300,
                  color: Colors.blue),
            )
          ],
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.plus_one),
        )
      ]),
    );
  }
}
