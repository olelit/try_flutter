import 'package:flutter/material.dart';

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