// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_i/screens/home/home_pages.dart';
import '../../main.dart';
import '../stake/stake.dart';

class BottomNavigatorBarPages extends StatefulWidget {
  const BottomNavigatorBarPages({super.key});

  @override
  State<BottomNavigatorBarPages> createState() =>
      _BottomNavigatorBarPagesState();
}

class _BottomNavigatorBarPagesState extends State<BottomNavigatorBarPages> {
  int index = 0;

  void onTap(int value) {
    setState(() {
      index = value;
    });
  }

  var _bottomlist = <Widget>[
    HomePages(),
    SizedBox(height: double.maxFinite,width: double.maxFinite,child: ColoredBox(color: Colors.red)),
    StakePages(),
    SizedBox(height: double.maxFinite,width: double.maxFinite,child: ColoredBox(color: Colors.purple)),
    SizedBox(height: double.maxFinite,width: double.maxFinite,child: ColoredBox(color: Colors.greenAccent)),
    SizedBox(height: double.maxFinite,width: double.maxFinite,child: ColoredBox(color: Colors.green)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomlist.elementAt(index),
      bottomNavigationBar: Container(
        height: 110,
        child: BottomNavigationBar(
          backgroundColor: isChangeTheme.value ? Colors.black : Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                color: isChangeTheme.value ? Colors.black : Colors.white,
              ),
              label: "",
              backgroundColor:
                  isChangeTheme.value ? Colors.white : Colors.black,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: isChangeTheme.value ? Colors.black : Colors.white,
              ),
              label: "",
              backgroundColor:
                  isChangeTheme.value ? Colors.white : Colors.black,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/move.svg",
                color: isChangeTheme.value ? Colors.black : Colors.white,
              ),
              label: "",
              backgroundColor:
                  isChangeTheme.value ? Colors.white : Colors.black,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/shop.svg",
                color: isChangeTheme.value ? Colors.black : Colors.white,
              ),
              label: "",
              backgroundColor:
                  isChangeTheme.value ? Colors.white : Colors.black,
            ),
            const BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "http://source.unsplash.com/random/",
                  ),
                ),
                label: "")
          ],
          onTap: onTap,
          currentIndex: index,
        ),
      ),
    );
  }
}
