import 'package:flutter/material.dart';
import 'package:foundationapp/pages/about_page/about_page.dart';
import 'package:foundationapp/pages/contact_page/contact_page.dart';
import 'package:foundationapp/pages/event_page/event_page_body.dart';
import 'package:foundationapp/pages/gallary_page/full_image_view.dart';
import 'package:foundationapp/pages/gallary_page/gallary_page.dart';
import 'package:foundationapp/pages/home/main_fund_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selcetIndex = 0;
  List pages = [
    MainFundationPage(),
    EventPageBody(),
    GallaryPage(),
    //FullImageView(),
    AboutPage(),
    ContactPage(),
  ];

  void onTapNav (int index){
    setState(() {
      _selcetIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.greenAccent,
      body: pages[_selcetIndex],
      bottomNavigationBar: BottomNavigationBar(
        ///backgroundColor: Colors.amberAccent,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selcetIndex,
        onTap: onTapNav,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_outlined),
            label: "Event",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.browse_gallery_outlined),
            label: "Gallary",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.foundation_outlined),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_outlined),
            label: "Contact",
          ),
        ],
      ),
    );
  }
}
