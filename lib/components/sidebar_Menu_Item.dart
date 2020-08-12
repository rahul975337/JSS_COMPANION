import 'package:flutter/material.dart';

import '../colors.dart';

class MenuItem extends StatelessWidget {
  final String itemText;
  final IconData itemIcon;
  final int selected;
  final int position;

  MenuItem(
      {@required this.itemText,
      @required this.itemIcon,
      this.selected,
      this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected == position ? Color(0xFFB151E26) : Color(0xFFB1F2B36),
      child: Row(
        children: <Widget>[
//          Container(
//              padding: const EdgeInsets.all(20),
//              child: Image.asset("assets/images/$itemIcon.png")),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Icon(
                itemIcon,
                color: kWhiteColor,
                size: 40,
              ),
            ),
          ),
          Container(
            child: Text(
              itemText,
              style: TextStyle(color: kWhiteColor, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
