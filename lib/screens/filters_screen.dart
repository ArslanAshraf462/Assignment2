import '../constants.dart';
import '../widgets/botton_container_widget.dart';
import '../widgets/filters_select_btn_widget.dart';
import '../widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/clear_apply_button_widget.dart';
import '../widgets/radio_button_widget.dart';

class FiltersScreen extends StatelessWidget {
  final Widget child;
  FiltersScreen({required this.child});
  List items = item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Stack(
                  textDirection: TextDirection.ltr,
                  clipBehavior: Clip.none,
                  children: [
                   BottomContainerWidget(
                       closeIcon: child,
                       child: Column(
                     children: [
                       VerticalSizedWidget(60.0),
                       RadioButtonWidget(items: items,),
                       const Padding(
                         padding: EdgeInsets.only(right: 250),
                         child: Text('Filters',style: ConstantTextStyle.filterSrnFilterHeadingStyle,),
                       ),
                       VerticalSizedWidget(8),
                       Padding(
                         padding: const EdgeInsets.only(left: 18,right: 18),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: const [
                             Text('Supermarkets',style: ConstantTextStyle.filterSrnSuperMrktStyle,),
                             Text('Reset',style: ConstantTextStyle.filterSrnResetStyle,
                             ),
                           ],
                         ),
                       ),
                       VerticalSizedWidget(18),
                       FilterSelectBtnWidget(),
                       VerticalSizedWidget(70),
                       ClearApplyButtonWidget(),
                       VerticalSizedWidget(25),
                     ],
                   )),
                    const Padding(
                      padding: EdgeInsets.only(left: 33,top: 25,),
                      child: Text('Sort by',
                        style: ConstantTextStyle.sortBy,
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ),
    );
  }
}
