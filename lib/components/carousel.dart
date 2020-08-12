import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardSlide extends StatefulWidget {
  final heightOfCard, widthOfCard;

  const CardSlide({Key key, this.heightOfCard, this.widthOfCard});
  @override
  _CardSlideState createState() => _CardSlideState();
}

class _CardSlideState extends State<CardSlide> {
  double heightOfCard, widthOfCard;
//  _CardSlideState({
////    this.heightOfCard,
////    this.widthOfCard,
////  });
  @override
  Widget build(BuildContext context) {
    List cardList = [Item1(), Item1(), Item1(), Item1()];
    heightOfCard = widget.heightOfCard;
    widthOfCard = widget.widthOfCard;
    return Container(
      height: heightOfCard,
      child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              reverse: false,
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              aspectRatio: 2.0,
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 3,
                    shadowColor: Colors.blueGrey,
                    margin: EdgeInsets.all(7),
                    child: card,
                  ),
                );
              });
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
//  const Item1({Key key}) : super(key: key);
  Item1({this.heightleft});
  final heightleft;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Image.network(
          'https://blog.photofeeler.com/wp-content/uploads/2017/09/tinder-photo-size-tinder-picture-size-tinder-aspect-ratio-image-dimensions-crop.jpg',
        ),
      ),
    );
  }
}
