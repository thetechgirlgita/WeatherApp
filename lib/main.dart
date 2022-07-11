import 'package:flutter/material.dart';

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
    return  Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      body:
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [

            Text("Weather Forecast",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              )
            ),
          ],
        )
    );
  }
}


