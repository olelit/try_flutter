  import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Roboto',
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
          )),
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.indigo,
            title: const Text('Counter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Tab "-" to decrement'),
              CountStatefulWidget(),
              Text('Tab "+" to increment'),
            ],
          ),
        ),
      ),
    );
  }
}

class CountStatefulWidget extends StatefulWidget {
  const CountStatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CountWidgetState();
  }
}

class _CountWidgetState extends State<CountStatefulWidget> {
  int value = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 120,
      decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () => onPressed(1),
              icon: const Icon(Icons.add)),
          Text(
            '$value',
            style: const TextStyle(color: Colors.black),
          ),
          IconButton(
              onPressed: () => onPressed(-1),
              icon: const Icon(Icons.remove)),
        ],
      ),
    );
  }

  void onPressed(int coof) {
    setState(() {
      value+coof;
    });
  }
}