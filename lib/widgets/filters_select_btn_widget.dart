import 'package:flutter/material.dart';

import 'selection_button_widget.dart';
import 'vertical_sized_widget.dart';
class FilterSelectBtnWidget extends StatelessWidget {
  const FilterSelectBtnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15,right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectionButtonWidget(text: 'Tesco',),
              SelectionButtonWidget(text: 'Aldi',),
              SelectionButtonWidget(text: 'Asda',),
            ],),
          VerticalSizedWidget(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectionButtonWidget(text: 'Sainsbury\'s',),
              SelectionButtonWidget(text: 'Lidl',),
              SelectionButtonWidget(text: 'Ocado',),
            ],),
        ],
      ),
    );
  }
}
