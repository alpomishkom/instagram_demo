import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_i/screens/home/home_pages.dart';
import 'package:instagram_i/screens/widgets/bottomnavigatorbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

ValueNotifier<bool> isChangeTheme = ValueNotifier(true);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isChangeTheme,
      builder: (BuildContext context, bool value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: value ? ThemeMode.light : ThemeMode.dark,
          darkTheme: ThemeData(
            iconTheme:IconThemeData(color: value ? CupertinoColors.white: Colors.black) ,
            scaffoldBackgroundColor: Color(0xFF00000000),
            textTheme: Typography(platform: TargetPlatform.iOS).white,
          ),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            textTheme: Typography(platform: TargetPlatform.iOS).black,
          ),
          home: BottomNavigatorBarPages(),
        );
      },
    );
  }
}
