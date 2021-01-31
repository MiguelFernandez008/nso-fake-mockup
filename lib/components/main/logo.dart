import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.red,
        ),
        Text(
          'Offline'.toUpperCase(),
          style: TextStyle(fontSize: 40.0, color: Colors.white),
        )
      ],
    ));
  }
}