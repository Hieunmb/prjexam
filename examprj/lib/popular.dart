import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'place.dart';
import 'popular_item.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  late List<Place> places = [];

  @override
  void initState() {
    super.initState();
    _fetchPlaces();
  }

  // call API to get data
  Future<void> _fetchPlaces() async {
    try {
      const url = "http://10.22.185.76:8080/api/places";
      Response response = await Dio().get(url);
      List jsonResponse = response.data;
      setState(() {
        places = jsonResponse.map((place) => Place.fromJson(place)).toList();
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Popular",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: PopularItem(place: places[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
