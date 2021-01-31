import 'package:flutter/material.dart';
import 'package:nso_clone/components/settings/header.dart';
import 'package:nso_clone/components/settings/link.dart';

class SettingsListWidget extends StatelessWidget {

  List<String> _items;
  String _header;

  SettingsListWidget({List<String> items, String header}) {
    _items = items;
    _header = header;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SettingsHeaderWidget(
              text: _header,
            ),
          ),
          ListView.builder(
            primary: false,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return SettingsLinkWidget(text: _items[index],);
            },
            itemCount: _items.length,
          )
        ],
      ),
    );
  }
}
