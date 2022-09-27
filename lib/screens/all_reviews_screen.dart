import 'package:assignment_2/widgets/all_reviews_widget.dart';
import 'package:assignment_2/widgets/botton_container_widget.dart';
import 'package:assignment_2/widgets/horizontal_sized_widget.dart';
import 'package:assignment_2/widgets/pop_screen_widget.dart';
import 'package:assignment_2/widgets/title_widget.dart';
import 'package:assignment_2/widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';

class AllReviews extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/top_nav.png', width: double.infinity,),
            VerticalSizedWidget(15.0),
            Row(
              children: [
                HorizontalSizedWidget(20.0),
               PopScreenWidget(title: 'Back'),
                HorizontalSizedWidget(20.0),
                TitleWidget(title: 'Veggie Wendy the Worm', fontWeight: FontWeight.bold),
              ],
            ),
            VerticalSizedWidget(38.0),
            BottomContainerWidget(child: AllReviewsWidget(),),
          ],
        ),
      ),
    );
  }
}
