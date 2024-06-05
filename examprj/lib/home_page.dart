import 'package:flutter/material.dart';
import 'popular.dart'; // Import Popular widget

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Destinations'),
      ),
      body: Popular(),
    );
  }
}
