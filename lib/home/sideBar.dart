import 'package:flutter/material.dart';
import 'package:flutter_app/components/sidebar_Menu_Item.dart';
import 'package:flutter_app/screens/homepage.dart';
import 'package:flutter_app/screens/page2.dart';
import 'package:flutter_app/screens/page3.dart';
import 'package:flutter_app/screens/page4.dart';

import '../colors.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final List<String> menuItems = [
    "Home",
    "Blogger",
    "Add New Post",
    "Settings"
  ];
  final List<IconData> menuIcons = [
    Icons.four_k,
    Icons.home,
    Icons.access_alarm,
    Icons.ac_unit
  ];

//  final List<>
///////
  final List<Widget> routes = [
    HomePage(),
    Page2(),
    Page3(),
    Page4(),
  ];

  //////////
  bool sidebarOpen = false;

  double yOffset = 0;
  double xOffset = 60;
  double pageScale = 1;

  int selectedMenuItem = 0;

  String pageTitle = "Homepage";
  Widget Page = HomePage();

  void setSidebarState() {
    setState(() {
      xOffset = sidebarOpen ? 265 : 60;
      yOffset = sidebarOpen ? 70 : 0;
      pageScale = sidebarOpen ? 0.8 : 1;
    });
  }

  void setPageTitle() {
    switch (selectedMenuItem) {
      case 0:
        pageTitle = "Homepage";

        break;
      case 1:
        pageTitle = "Blogger";
        break;
      case 2:
        pageTitle = "Add New Post";
        break;
      case 3:
        pageTitle = "Settings";
        break;
    }
  }

  void setPage() {
    switch (selectedMenuItem) {
      case 0:
        Page = HomePage();

        break;
      case 1:
        Page = Page2();
        break;
      case 2:
        Page = Page3();
        break;
      case 3:
        Page = Page4();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    child: Container(
                      color: kPrimaryColor,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              sidebarOpen = true;
                              setSidebarState();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          foregroundColor: Colors.blue,
                          backgroundImage: NetworkImage(kImageUrl),
                          radius: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Rahul Tilwani',
                          style: TextStyle(color: kWhiteColor, fontSize: 23),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Colors.white.withOpacity(0.3),
                    indent: 32,
                    endIndent: _width / 2,
                  ),
                  Container(
                    child: Expanded(
                        child: new ListView.builder(
                            itemCount: menuItems.length,
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    sidebarOpen = false;
                                    selectedMenuItem = index;
                                    setSidebarState();
                                    setPageTitle();
                                    setPage();

//                                  Navigator.push(
//                                    context,
//                                    MaterialPageRoute(
//                                        builder: (context) => routes[index]),
//                                  );
                                  },
                                  child: MenuItem(
                                    itemIcon: menuIcons[index],
                                    itemText: menuItems[index],
                                    selected: selectedMenuItem,
                                    position: index,
                                  ),
                                ))),
                  ),
                  Container(
                    child: MenuItem(
                      itemIcon: menuIcons[3],
                      itemText: "Logout",
                      selected: selectedMenuItem,
                      position: menuItems.length + 1,
                    ),
                  )
                ],
              ),
            ),
            AnimatedContainer(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 200),
              transform: Matrix4.translationValues(xOffset, yOffset, 1.0)
                ..scale(pageScale),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: sidebarOpen
                      ? BorderRadius.circular(20)
                      : BorderRadius.circular(20)),
              child: Column(
                children: <Widget>[
                  //top part of home page
                  Container(
                      margin: const EdgeInsets.only(top: 24),
                      height: 60,
                      color: kWhiteColor,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              sidebarOpen = !sidebarOpen;
                              setSidebarState();
                            },
                            child: Container(
                                color: kWhiteColor,
                                padding: const EdgeInsets.all(20),
                                child: Icon(Icons.menu)),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              pageTitle,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      )),
                  //bottom part or main part of home page
                  Container(
                    margin: EdgeInsets.only(right: _width / 6),
                    height: _height - 60,
                    child: Page,
//                  child: setPage(),

//               child: getWidget()
//
//                      Widget getWidget() {
//    if (x > 5)
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
