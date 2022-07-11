import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'constant.dart';

void main() {
  runApp(const Weather());
}

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: weather(),
    );
  }
}

// ignore: camel_case_types
class weather extends StatefulWidget {
  const weather({Key? key}) : super(key: key);

  @override
  _weatherState createState() => _weatherState();
}

// ignore: camel_case_types
class _weatherState extends State<weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundC,
        body: Column(
          children: [
            Row(
                children: [
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width,
                  ),

                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Weather Forecast",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            )
          ],
        ));
  }
}
