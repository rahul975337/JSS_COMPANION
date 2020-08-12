import 'package:flutter/material.dart';

import '../colors.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(color: Colors.purple, width: 60, child: Column()),
          Container(color: kWhiteColor, child: Column()),
        ],
      ),
    );
  }
}
