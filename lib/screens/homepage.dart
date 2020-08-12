import 'package:flutter/material.dart';
import 'package:flutter_app/components/carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                child: CardSlide(
              heightOfCard: _width / 2,
              widthOfCard: _width / 2,
            )),
            Container(
              width: _width - 100,
              height: _width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1446776899648-aa78eefe8ed0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80')),
                ),
              ),
            ),
            Container(
                child: CardSlide(
              heightOfCard: _width / 2,
              widthOfCard: _width / 2,
            )),
          ],
        ),
      )),
    );
  }
}
