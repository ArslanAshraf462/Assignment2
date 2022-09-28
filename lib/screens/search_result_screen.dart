import 'package:assignment_2/widgets/search_filter_widget.dart';
import 'package:assignment_2/widgets/search_result_gridview_widget.dart';
import 'package:assignment_2/widgets/text_field_widget.dart';
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
        child: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/images/top_nav.png', width: double.infinity,),
              VerticalSizedWidget(15.0),
              Row(
                children: [
                  HorizontalSizedWidget(20.0),
                  PopScreenWidget(title: 'Home'),
                  HorizontalSizedWidget(50.0),
                  TitleWidget(title: 'Search Result', fontWeight: FontWeight.normal),
                ],
              ),
              VerticalSizedWidget(35),
              SearchFilterWidget(),
              VerticalSizedWidget(30),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 184),
                child: Text('12 Results for “Cheese balls”'),
              ),
              VerticalSizedWidget(20),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                    width: double.infinity,
                    height: 430,
                    child: SearchResultGridViewWidget()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}