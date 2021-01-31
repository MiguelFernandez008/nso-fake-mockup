import 'package:flutter/material.dart';
import 'package:nso_clone/components/settings/items.dart';
import 'package:nso_clone/components/settings/logout.dart';
import 'package:nso_clone/components/settings/user.dart';

class SettingsRoute extends StatelessWidget {

  final List<String> _ajustes = ["Notificaciones", "Ahorro de batería"];
  final List<String> _info = [
    "Servicio de ayuda de Nintendo",
    "Danos tu opinión",
    "Contrato de cuenta Nintendo",
    "Política de privacidad de Nintendo",
    "Avisos sobre la propiedad intelectual",
    "Uso de datos"
  ];
  final List<String> _account = ["wa***@g***"];
  final String _ajustesHeader = "Ajustes";
  final String _infoHeader = "Más información";
  final String _accountHeader = "Cuenta Nintendo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajustes e información"),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black87,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AvatarWidget(),
                SizedBox(height: 10,),
                SettingsListWidget(items: _ajustes, header: _ajustesHeader,),
                SizedBox(height: 10,),
                SettingsListWidget(items: _info, header: _infoHeader,),
                SizedBox(height: 10,),
                SettingsListWidget(items: _account, header: _accountHeader,),
                SizedBox(height: 30,),
                SettingsLogoutWidget(),
                SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
