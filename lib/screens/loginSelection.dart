import 'package:flutter/material.dart';
import 'package:jss_project/colors.dart';
import 'package:jss_project/components/loginSelectionTile.dart';

class LoginSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Container(
//        decoration: BoxDecoration(
//          color: Colors.blueGrey,
//          image: new DecorationImage(
//            image: new NetworkImage(
//                'https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
//            fit: BoxFit.cover,
//          ),
//          borderRadius: BorderRadius.all(Radius.circular(20)),
//        )
//        ,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/3/3d/JSSATE_Bangalore_logo.png'),
              LoginSelectionTile(
                width: _width,
                height: _width,
                text: 'Login as Teacher ',
              ),
              LoginSelectionTile(
                width: _width,
                height: _width,
                text: 'Login as Student',
              )
            ],
          ),
        ),
      ),
    );
  }
}
