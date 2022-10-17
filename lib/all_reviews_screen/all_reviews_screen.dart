import 'components/all_reviews_widget.dart';
import '../widgets/botton_container_widget.dart';
import '../widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';

class AllReviews extends StatelessWidget {
  final Widget child;
  final int id2;
  AllReviews({required this.child,required this.id2});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: SafeArea(
          child: Column(
            children: [
              VerticalSizedWidget(33.0),
              BottomContainerWidget(
                closeIcon: child,
                child: AllReviewsWidget(id2),),
            ],
          ),

      ),
    );
  }
}
