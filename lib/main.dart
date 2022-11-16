import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const CountWidget());

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
              onPressed: () {
                setState(() {
                  value++;
                });
              },
              icon: const Icon(Icons.add)),
          Text(
            '$value',
            style: const TextStyle(color: Colors.black),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  value--;
                });
              },
              icon: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}

class UploadFileWidget extends StatefulWidget {
  const UploadFileWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UploadFileWidgetState();
  }
}

class _UploadFileWidgetState extends State<UploadFileWidget> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo,
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _loading = !_loading;
                    _moveUploadProgress();
                  });
                },
                child: const Icon(Icons.cloud_download)),
            appBar: AppBar(
              title: const Text('Upload manager'),
              centerTitle: true,
            ),
            body: Center(
                child: Container(
                    padding: const EdgeInsets.all(15),
                    child: _loading
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const LinearProgressIndicator(value: 23),
                              Text(
                                '${(_progressValue * 100).round()}',
                                textDirection: TextDirection.ltr,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          )
                        : const Text(
                            'Press download button',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )))));
  }

  void _moveUploadProgress() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if (_progressValue < 1) {
          _progressValue += 0.2;
        } else {
          _loading = false;
        }
      });
    });
  }
}

class AssetImage extends StatelessWidget {
  const AssetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Assets',
            style: TextStyle(fontFamily: 'Roboto'),
          ),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset('assets/images/index.jpg'),
              Image.asset('assets/icons/4691465_flutter_icon.png'),
              const Positioned(
                  top: 16,
                  left: 115,
                  child: Text('TEST TEXT',
                      style: TextStyle(fontSize: 50, color: Colors.red)))
            ],
          ),
        ),
      ),
    );
  }
}
