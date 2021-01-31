import 'package:flutter/material.dart';
import 'package:nso_clone/components/settings/header.dart';

class AvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsHeaderWidget(text: "Informacion de usuario",),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: Image.network("https://www.miicharacters.com/miis/thumb/22223_mario.jpg").image,
            ),
            SizedBox(width: 20,),
            Text("LSama", style: TextStyle(color: Colors.white, fontSize: 25)),
          ],
        )],
      ),
    );
  }
}
