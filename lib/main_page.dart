import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slicing_amora/home.dart';
import 'package:slicing_amora/profile.dart';
import 'package:slicing_amora/search.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
  List<Widget> pages = [Home(), Search(), Profile()];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: pages[currentPage],
    bottomNavigationBar: BottomNavigationBar(
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      currentIndex: currentPage,
      onTap: (value) {
        setState(() {
          currentPage = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/home_icon.svg"), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}