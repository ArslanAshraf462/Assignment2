import 'package:assignment_2/widgets/all_reviews_widget.dart';
import 'package:assignment_2/widgets/botton_container_widget.dart';
import 'package:flutter/material.dart';

class AllReviews extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/top_nav.png', width: double.infinity,),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: (){
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined),
                      Text('Back'),
                    ],
                  ),
                ),
                SizedBox(width: 20.0,),
                Text('Veggie Wendy the Worm',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 38.0,),
            BottomContainerWidget(child: AllReviewsWidget(),),
          ],
        ),
      ),
    );
  }
}
