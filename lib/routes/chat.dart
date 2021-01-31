import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoute extends StatelessWidget {

  final String _chatMessage = "Aquí puedes utilizar el chat de voz cuando uses un programa compatible.";
  final String _tutorialString = "Cómo iniciar el chat de voz";
  final Color _textColors = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat de voz"),
      ),
      body: Container(
        color: Colors.grey[800],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 48,),
            Icon(
              Icons.mic,
              color: Colors.grey,
              size: 256.0,
            ),
            SizedBox(height: 24,),
            Text(_chatMessage, textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0,color: _textColors)),
            SizedBox(height: 24,),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0,),
                  Text(_tutorialString, style: TextStyle(color: _textColors,),)
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/tutorial');
              },
            )
          ],
        ),
      ),
    );
  }
}
