import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/sideBar.dart';

void main() {
  runApp(AfterSplash());
}
//
//void main() {
//  SystemChrome.setEnabledSystemUIOverlays([]);
//  runApp(new MaterialApp(
//    debugShowCheckedModeBanner: false,
//    home: new MyApp(),
//  ));
//}

//Splash Screen
//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => new _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  @override
//  Widget build(BuildContext context) {
//    return new SplashScreen(
//        seconds: 4,
//        navigateAfterSeconds: new AfterSplash(),
//        image: new Image.network(
//            'https://images.static-collegedunia.com/public/college_data/images/logos/1459851872logo.jpg'),
//        backgroundColor: kWhiteColor,
//        styleTextUnderTheLoader: new TextStyle(),
//        photoSize: 100.0,
//        loadingText: Text('JSSATE Welcomes you'),
//        onClick: () => print("Flutter Egypt"),
//        loaderColor: kPrimaryColor);
//  }
//}
//main project after splash screen

class AfterSplash extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      theme: ThemeData(fontFamily: "Nunito"),
      title: "Sidebar Project",
      home: Scaffold(
        backgroundColor: Color(0xFFB1F2B36),
        body: SideBar(),
//        Container(
//          color: Color(0xFFB1F2B36),
//          child: AppContainer(),
//        ),
      ),
    );
  }
}
