import '../services/categoriess_services.dart';

import '../services/new_product_services.dart';
import '../screens/account_screen.dart';
import '../screens/favorite_screen.dart';
import '../screens/home_screen.dart';
import '../screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'services/reviews_services.dart';
import 'widgets/bottom_bar_btn_widget.dart';
import 'widgets/floating_action_btn_widget.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff07AD5A),
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

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
   // SearchResultScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewProductServices(),),
        ChangeNotifierProvider(create: (_) => CategoriesServices(),),
        ChangeNotifierProvider(create: (_) => ReviewsServices(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBody: true,
          body: _pageOptions[selectedPage],
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionBtnWidget(
          //   onPressed: () {
          //   setState(() {
          //     selectedPage=4;
          //   });
          // },
          ),
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
      ),
    );
  }
}
