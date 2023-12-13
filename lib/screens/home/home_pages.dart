// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/instagram.svg",
                        color: isChangeTheme.value
                            ? CupertinoColors.black
                            : Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      isChangeTheme.value
                          ? IconButton(
                              onPressed: () {
                                isChangeTheme.value = !isChangeTheme.value;
                                setState(() {});
                              },
                              icon: const Icon(
                                CupertinoIcons.sun_max_fill,
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                isChangeTheme.value = !isChangeTheme.value;
                                setState(() {});
                              },
                              icon: const Icon(
                                CupertinoIcons.moon,
                                color: CupertinoColors.white,
                              ),
                            ),
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/icons/massage.svg",
                        color: isChangeTheme.value
                            ? CupertinoColors.black
                            : Colors.white,
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      SvgPicture.asset(
                        "assets/icons/add.svg",
                        color: isChangeTheme.value
                            ? CupertinoColors.black
                            : Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: NetworkImage(
                            "http://source.unsplash.com/random/$index"),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color.fromRGBO(0, 0, 0, 0.10),
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListTile(
                              textColor: isChangeTheme.value
                                  ? CupertinoColors.black
                                  : Colors.white,
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.red,
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: NetworkImage(
                                    "http://source.unsplash.com/random/$index",
                                  ),
                                ),
                              ),
                              title: Text(
                                "Ruffles",
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              subtitle: const Text("Sponsored"),
                              trailing: Icon(
                                Icons.more_horiz,
                                color: isChangeTheme.value
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          Expanded(
                            flex: 8,
                            child: Container(
                              width: double.infinity,
                              child: Image.network(
                                "http://source.unsplash.com/random/$index",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/heart.svg",
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        SvgPicture.asset(
                                          "assets/icons/comment.svg",
                                          color: isChangeTheme.value
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        SvgPicture.asset(
                                          "assets/icons/send.svg",
                                          color: isChangeTheme.value
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/icons/save.svg",
                                          color: isChangeTheme.value
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "100 Likes",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Username Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor incididunt...",
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Text(
                                            "more",
                                            style: GoogleFonts.openSans(
                                              color: Color(0xFF6E6E6E),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Text("View all 16 comments",style: GoogleFonts.openSans(
                                      color: Color(0xFF6E6E6E),
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
