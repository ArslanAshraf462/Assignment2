import '../constants.dart';
import '../widgets/search_filter_widget.dart';
import '../widgets/search_result_gridview_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/horizontal_sized_widget.dart';
import '../widgets/pop_screen_widget.dart';
import '../widgets/title_widget.dart';
import '../widgets/vertical_sized_widget.dart';

class SearchResultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Image.asset(ConstantImage.navImage, width: double.infinity,),
                VerticalSizedWidget(25.0),
                Row(
                  children: [
                    HorizontalSizedWidget(20.0),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                        child: PopScreenWidget(title: 'Home'),
                    ),
                    HorizontalSizedWidget(50.0),
                    TitleWidget(title: 'Search Result', fontWeight: FontWeight.normal),
                  ],
                ),
                VerticalSizedWidget(41),
                SearchFilterWidget(),
                VerticalSizedWidget(30),
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 184),
                  child: Text('12 Results for “Cheese balls”'),
                ),
                VerticalSizedWidget(26),
                const SizedBox(
                  width: double.infinity,
                  height: 480,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: SearchResultGridViewWidget(),
                  ),
                ),
                VerticalSizedWidget(60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
