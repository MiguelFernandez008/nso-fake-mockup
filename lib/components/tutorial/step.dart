import 'package:flutter/material.dart';

class TutorialStepWidget extends StatelessWidget {

  int _step;
  String _text;
  IconData _icon;

  TutorialStepWidget({step, text, icon}) {
    _step = step;
    _text = text;
    _icon = icon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_step.toString(), style: TextStyle(color: Colors.grey, fontSize: 40),),
              SizedBox(width: 15,),
              Flexible(child: Text(_text, style: TextStyle(color: Colors.grey, fontSize: 18),))
            ],
          ),
          SizedBox(height: 20,),
          Icon(_icon,color: Colors.grey, size: 128,),
          SizedBox(height: 40,)
        ],
      ),
    );
  }
}
