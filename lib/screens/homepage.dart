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
                child: CardSlide(
              heightOfCard: _width / 2,
              widthOfCard: _width / 2,
            )),
            Container(
                child: CardSlide(
              heightOfCard: _width / 2,
              widthOfCard: _width / 2,
            )),
            Container(
                child: CardSlide(
              heightOfCard: _width / 2,
              widthOfCard: _width / 2,
            )),
            Container(
                child: CardSlide(
              heightOfCard: _width / 2,
              widthOfCard: _width / 2,
            )),
            Container(
                child: CardSlide(
              heightOfCard: _width / 2,
              widthOfCard: _width / 2,
            )),
            Container(
                child: CardSlide(
              heightOfCard: _width / 2,
              widthOfCard: _width / 2,
            )),
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
