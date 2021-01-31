import 'package:flutter/material.dart';
import 'package:nso_clone/components/tutorial/step.dart';

class TutorialRoute extends StatelessWidget {
  final List<Map<String, dynamic>> _steps = [
    {
      "text": "Abre la pantalla del chat de voz en esta aplicación.",
      "icon": Icons.phone_android
    },
    {
      "text":
          "Abre un programa compatible con el chat de voz en tu consola Nintendo Switchy, a continuación, selecciona el modo pertinente.",
      "icon": Icons.play_arrow
    },
    {
      "text":
          "¡Podrás usar el chat de voz de inmediato a través de la aplicación!",
      "icon": Icons.mic
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cómo iniciar el chat de voz"),
      ),
      body: Container(
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
          child: ListView.builder(
            primary: false,
            shrinkWrap: false,
            itemBuilder: (BuildContext context, int index) {
              return TutorialStepWidget(step: index + 1, text: _steps[index]['text'], icon: _steps[index]['icon']);
            },
            itemCount: _steps.length,
          ),
        ),
      ),
    );
  }
}
