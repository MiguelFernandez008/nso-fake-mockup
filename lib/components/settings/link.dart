import 'package:flutter/material.dart';

class SettingsLinkWidget extends StatelessWidget {

  String _text;

  SettingsLinkWidget({text}) {
    this._text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text(this._text, style: TextStyle(color: Colors.white, fontSize: 18),)),
            IconButton(icon: Icon(Icons.arrow_forward, color: Colors.white,), onPressed: null)
          ],
        ),
      ),
    );
  }
}
