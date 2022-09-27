import 'package:assignment_2/widgets/botton_container_widget.dart';
import 'package:assignment_2/widgets/clear_apply_button_widget.dart';
import 'package:assignment_2/widgets/radio_button_widget.dart';
import 'package:assignment_2/widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/title_widget.dart';

class AllReviewsFilterScreen extends StatelessWidget {
  const AllReviewsFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/top_nav.png', width: double.infinity,),
            VerticalSizedWidget(15.0),
            TitleWidget(title: 'Veggie Wendy the Worm', fontWeight: FontWeight.bold),
            VerticalSizedWidget(38.0),
            Stack(
              textDirection: TextDirection.ltr,
              clipBehavior: Clip.none,
              children: [
                BottomContainerWidget(child: Column(
                  children: [
                    VerticalSizedWidget(75.0),
                    RadioButtonWidget(),
                    ClearApplyButtonWidget(),
                  ],
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 33,top: 25,),
                  child: Text('Sort by',style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ),
    );;
  }
}

