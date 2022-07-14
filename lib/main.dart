import 'package:flutter/material.dart';

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
        appBar: AppBar(
          backgroundColor: appbarC,
          centerTitle: true,
          title:  const Text("Weather Forecast",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  [
                Padding(
                  child: IconButton(
                      onPressed: (){
                        showSearch(
                            context: context,
                            delegate: ListOfCountries(),
                        );
                      },
                      icon:  const Icon(Icons.location_pin,
                        color: Colors.yellow,
                        size: 35,
                      ),
                  ),

                  padding: const EdgeInsets.only(top: 10),
                ),
                const Text("Delhi",
                      style: TextStyle(
                        fontSize: 25,
                        color:  Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                  ),

              ],
            )
          ],
        ));
  }
}
class ListOfCountries extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "India",
    "Nepal",
    "Maldives",
    "USA",
    "Canada",
    "China",
    "Russia",
    "Srilanka",
    "IreLand",
    "Newzealand",
    "Japan",
    "Germany",
    "France",
    "Paris"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var country in searchTerms) {
      if (country.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(country);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

