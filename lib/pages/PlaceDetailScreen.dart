import 'package:flutter/material.dart';

class PlaceDetailScreen extends StatelessWidget {
  final String placeName;

  PlaceDetailScreen({required this.placeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(placeName),
      ),
      body: Center(
        child: Text('Details for $placeName'),
      ),
    );
  }
}
