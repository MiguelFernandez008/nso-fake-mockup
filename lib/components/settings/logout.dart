import 'package:flutter/material.dart';

class SettingsLogoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text("Cerrar sesión", style: TextStyle(color: Colors.white, fontSize: 20),),
      ),
    );
  }
}
