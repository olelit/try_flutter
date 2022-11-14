import 'package:flutter/material.dart';

void main() => runApp(const UploadFileWidget());

class UploadFileWidget extends StatelessWidget {
  const UploadFileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo,
            floatingActionButton: const FloatingActionButton(
                onPressed: null, child: Icon(Icons.cloud_download)),
            appBar: AppBar(
              title: const Text('Upload manager'),
              centerTitle: true,
            ),
            body: Center(
                child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        LinearProgressIndicator(value: 23),
                        Text(
                          '23 %',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'Press download button',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    )))));
  }
}
