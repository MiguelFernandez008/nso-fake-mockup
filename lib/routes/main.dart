import 'package:flutter/material.dart';
import 'package:nso_clone/components/main/chat.dart';
import 'package:nso_clone/components/main/juegos.dart';
import 'package:nso_clone/components/main/logo.dart';

class MainRoute extends StatelessWidget {
  final String _online = 'Offline';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Ajustes',
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            LogoWidget(),
            ChatVozWidget(),
            JuegosCarruselWidget()
          ],
        ),
      ),
    );
  }
}
