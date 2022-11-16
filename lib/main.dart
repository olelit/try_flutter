import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const UploadFileWidget());

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
