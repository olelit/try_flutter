import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  final Color mainColor = Colors.white70;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Roboto',
          textTheme: TextTheme(
            bodyText2: TextStyle(color: mainColor, fontWeight: FontWeight.w300),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather'),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.red,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter city name',
                prefixIcon: Icon(Icons.search, color: mainColor),
                hintStyle: TextStyle(color: mainColor),
                border: InputBorder.none,
              ),
            ),
          ),
          const Text(
            'Murmansk Oblast, RU',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 70),
            child: Text(
              'Friday, Mar 20, 2020',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.sunny,
                  color: Colors.white,
                  size: 60,
                ),
                Column(
                  children: const [
                    Text(
                      '14 F',
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      'LIGHT  SNOW',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        (Icons.ac_unit),
                        color: mainColor,
                      ),
                      const Text('5'),
                      const Text('km/h')
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        (Icons.ac_unit),
                        color: mainColor,
                      ),
                      const Text('3'),
                      const Text('%')
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        (Icons.ac_unit),
                        color: mainColor,
                      ),
                      const Text('20'),
                      const Text('%')
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Text(
            '7-DAY WEATHER FORECAST',
            style: TextStyle(fontSize: 15),
          ),
          Container(
            height: 100,
            alignment: Alignment.center,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.white.withOpacity(0.4),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Friday',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('6 F', style: TextStyle(fontSize: 20)),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.sunny,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white.withOpacity(0.4),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Friday',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('6 F', style: TextStyle(fontSize: 20)),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.sunny,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white.withOpacity(0.4),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Friday',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('6 F', style: TextStyle(fontSize: 20)),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.sunny,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
