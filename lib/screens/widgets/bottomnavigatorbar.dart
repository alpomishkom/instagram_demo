// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_i/screens/home/home_pages.dart';
import 'package:instagram_i/screens/profil/profil_pages.dart';
import '../../main.dart';
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

  final _bottomlist = <Widget>[
    const HomePages(),
    const HomePages(),
    const HomePages(),
    const HomePages(),
    ProfilPages(),
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
