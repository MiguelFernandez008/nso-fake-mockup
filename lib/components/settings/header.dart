import 'package:flutter/material.dart';

class SettingsHeaderWidget extends StatelessWidget {

  String _text = "";

  SettingsHeaderWidget({text}) {
    this._text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(_text, style: TextStyle(color: Colors.grey, fontSize: 14),),
    );
  }
}
