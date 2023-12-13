// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../main.dart';
import '../userprofile/userwidget/userwidget.dart';

class ProfilPages extends StatefulWidget {
  const ProfilPages({super.key});

  @override
  State<ProfilPages> createState() => _ProfilPagesState();
}

class _ProfilPagesState extends State<ProfilPages>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
                  const Row(
                    children: [
                      Text(
                        "norqobilov.s1",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(Icons.keyboard_arrow_down),
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
                              "http://source.unsplash.com/random/"),
                          radius: 43,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "2",
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
                            "987B",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          Text(
                            "Druziya",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "11",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Text("Tashlagansiz", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "alpomish.s1",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const Text("bloger"),
                  const Text(
                    "PDP ACADMYA",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '''Science, Technology & Engineering\n🧑‍💻 Software Engineer\n🧠 Creator \n🟢 Available for Freelance Opportunities \n🚀Sharing My Coding Journey \n🌏 Exploring Tech Together
              ''', style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  StacktAvatar(),
                  const SizedBox(
                    height: 20,
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
                                        ? Colors.black87
                                        : Colors.white,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Profildi tahrlash",
                                    style: TextStyle(
                                      color: isChangeTheme.value
                                          ? Colors.white
                                          : Colors.black87,
                                    ),
                                  )),
                                ),
                                onTap: () {

                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: InkWell(
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        "http://source.unsplash.com/random/$index",
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
            const SizedBox(
              height: 10,
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
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
