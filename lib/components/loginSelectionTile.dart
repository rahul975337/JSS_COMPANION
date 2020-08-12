import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

import '../colors.dart';

class LoginSelectionTile extends StatelessWidget {
  const LoginSelectionTile(
      {Key key, @required double height, @required double width, this.text})
      : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height / 5,
      width: _width / 2,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
//        image: new DecorationImage(
//          image: new NetworkImage(
//              'https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
//          fit: BoxFit.cover,
//        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: EdgeInsets.only(
          top: _width / 6, left: _width / 10, right: _width / 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: ShapeOfView(
              elevation: 4,
              shape: DiagonalShape(
                  position: DiagonalPosition.Right,
                  direction: DiagonalDirection.Left,
                  angle: DiagonalAngle.deg(angle: 30)),
              child: StreamBuilder<Image>(
                stream: null,
                builder: (context, snapshot) {
                  return Container(
                    color: kPrimaryColor,
//
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text,
              textAlign: TextAlign.left,
              softWrap: true,
              style: TextStyle(color: kWhiteColor, fontSize: 18),
            ),
          ),
//          Align(
//            alignment: Alignment.bottomLeft,
//            child: Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Text(
//                'Batch 2019',
//                softWrap: true,
//                style: TextStyle(
//                  color: kWhiteColor,
//                  fontSize: 10,
//                ),
//              ),
//            ),
//          )
        ],
      ),
    );
  }
}
