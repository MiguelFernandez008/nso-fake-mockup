import 'package:flutter/material.dart';

class ChatVozWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.white),
            )),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Chat de voz',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/chat');
      },
    );
  }
}
