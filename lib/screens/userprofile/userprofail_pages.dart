// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_i/screens/home/home_pages.dart';
import 'package:instagram_i/screens/userprofile/userwidget/userwidget.dart';

import '../../main.dart';
import '../widgets/bottomnavigatorbar.dart';

class UserProfailPages extends StatefulWidget {
  const UserProfailPages({super.key});

  @override
  State<UserProfailPages> createState() => _ProfilPagesState();
}

class _ProfilPagesState extends State<UserProfailPages>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigatorBarPages(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      color:
                          isChangeTheme.value ? Colors.black87 : Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "norqobilov.s1",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset("assets/icons/galichka.svg"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          color: isChangeTheme.value
                              ? Colors.black87
                              : Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: isChangeTheme.value
                                ? Colors.black87
                                : Colors.white,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 45,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "http://source.unsplash.com/random/",
                          ),
                          radius: 43,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "1,234",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Text(
                            "Post",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "5,678",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "9,101",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Text("Following", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "alpomish.s1",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Category/Genre text",
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6E6E6E),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n "
                        "sed do eiusmod tempor incididunt #hashtag",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Link goes here"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const StacktAvatar(),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: InkWell(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: isChangeTheme.value
                                        ? Colors.blueAccent
                                        : Colors.blueAccent,
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: isChangeTheme.value ? Color(0xFFEFEFEF) : Color.fromRGBO(239, 239, 239, 0.20),
                              ),
                              child: Center(child: Text("Message")),
                            ),
                          ),
                          SizedBox(width: 6,),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: isChangeTheme.value ? Color(0xFFEFEFEF) : Color.fromRGBO(239, 239, 239, 0.20),
                              ),
                              child: Center(child: Text("Subscribe")),
                            ),
                          ),
                          SizedBox(width: 6,),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: isChangeTheme.value ? Color(0xFFEFEFEF) : Color.fromRGBO(239, 239, 239, 0.20),
                              ),
                              child: Center(child: Text("Contact")),
                            ),
                          ),
                          SizedBox(width: 6,),

                          Expanded(
                            child: InkWell(
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: const Color(0xFFEFEFEF),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/icons/peson_add.svg"),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            "http://source.unsplash.com/random/$index",
                          ),
                        ),
                        Text("Text here"),
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 30,
                  child: Center(
                    child: TabBar(
                      automaticIndicatorColorAdjustment: false,
                      indicatorColor: Colors.transparent,
                      dividerColor: Colors.transparent,
                      unselectedLabelColor: Colors.black,
                      controller: TabController(length: 3, vsync: this),
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(
                          icon: SvgPicture.asset(
                            "assets/icons/container_post.svg",
                            color: isChangeTheme.value
                                ? Colors.black87
                                : Colors.white,
                          ),
                        ),
                        Tab(
                          icon: SvgPicture.asset(
                            "assets/icons/move.svg",
                            color: isChangeTheme.value
                                ? Colors.black87
                                : Colors.white,
                          ),
                        ),
                        Tab(
                          icon: SvgPicture.asset(
                            "assets/icons/peson.svg",
                            color: isChangeTheme.value
                                ? Colors.black87
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Image.network(
                          "http://source.unsplash.com/random/$index",
                          fit: BoxFit.cover,
                        );
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
