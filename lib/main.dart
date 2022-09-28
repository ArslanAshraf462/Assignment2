import 'package:assignment_2/screens/account_screen.dart';
import 'package:assignment_2/screens/favorite_screen.dart';
import 'package:assignment_2/screens/home_screen.dart';
import 'package:assignment_2/screens/menu_screen.dart';
import 'package:assignment_2/screens/search_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/floating_action_btn_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff07AD5A),
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}
int selectedPage = 0;
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _pageOptions = [
    HomeScreen(),
    MenuScreen(),
    FavoriteScreen(),
    AccountScreen(),
    SearchResultScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pageOptions[selectedPage],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionBtnWidget(onPressed: () {
          setState(() {
            selectedPage=4;
          });
        },),
        bottomNavigationBar: ClipRRect(
          child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
      notchMargin: 7,
      child: Container(
        height: 65,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BottomBarBtnWidget(title: 'Home', icon: Icons.home,pageNumber: 0,onPressed: () {
              setState(() {
                selectedPage=0;
              });
            },),
            BottomBarBtnWidget(title: 'Menu', icon: Icons.menu,pageNumber: 1,onPressed: () {
              setState(() {
                selectedPage=1;
              });
            },),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BottomBarBtnWidget(title: 'Favorite', icon: Icons.favorite,pageNumber: 2,onPressed: () {
              setState(() {
                selectedPage=2;
              });
            },),
            BottomBarBtnWidget(title: 'Account', icon: Icons.person,pageNumber: 3,onPressed: () {
              setState(() {
                selectedPage=3;
              });
            },),
          ],
        ),
        ]
      ),
      ),
    ),
    ),
      ),
    );
  }
}
class BottomBarBtnWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final int pageNumber;
  final VoidCallback onPressed;
  BottomBarBtnWidget({required this.title,required this.icon,required this.pageNumber,required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          selectedPage==pageNumber? Icon(icon,color: Color(0xff07AD5A),): Icon(icon,color: Colors.grey,),
          selectedPage == pageNumber? Text(title,style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff07AD5A),
          ),): Text(title,style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),),
        ],
      ),
    );
  }
}


