import '../constants.dart';

import '../widgets/botton_container_widget.dart';
import '../widgets/clear_apply_button_widget.dart';
import '../widgets/radio_button_widget.dart';
import '../widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';

class AllReviewsFilterScreen extends StatelessWidget {
  final Widget child;
  AllReviewsFilterScreen({required this.child});
  List items = itemz;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
            children: [
              VerticalSizedWidget(12.0),
              Stack(
                textDirection: TextDirection.ltr,
                clipBehavior: Clip.none,
                children: [
                  BottomContainerWidget(
                    closeIcon: child,
                    child: Column(
                    children: [
                      VerticalSizedWidget(40.0),
                      RadioButtonWidget(items: items,),
                      ClearApplyButtonWidget(),
                      VerticalSizedWidget(270.0),
                    ],
                  ),),
                  const Padding(
                    padding: EdgeInsets.only(left: 33,top: 12,),
                    child: Text('Sort by',style: ConstantTextStyle.sortBy,),
                  ),
                ],
              ),
            ],
          ),

      ),
    );
  }
}

