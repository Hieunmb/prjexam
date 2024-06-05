import 'package:flutter/material.dart';
import 'place.dart';

class PopularItem extends StatelessWidget {
  final Place place;

  const PopularItem({required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFAFAFA),
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              place.thumbnailUrl,
              width: 150,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 0),
          Text(
            place.name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 0),
          Text(
            place.description,
            style: TextStyle(fontSize: 12, color: Colors.grey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 0),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // Hành động của bạn
            },
          ),
        ],
      ),
    );
  }
}
