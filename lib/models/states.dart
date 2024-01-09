

import 'package:flutter/material.dart';

class States {
  final String id;
  final String name;

  const States({required this.id, required this.name});
}

class Mystates extends StatelessWidget {
  final String child;

  const Mystates(statesData, {required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.00,
      child: Center(
          child: Text(
        child,
        style: TextStyle(fontSize: 40.0),
      )),
    );
  }
}
