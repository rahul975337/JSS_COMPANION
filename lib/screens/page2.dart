import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
