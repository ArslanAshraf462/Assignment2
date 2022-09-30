import 'package:flutter/material.dart';

import '../constants.dart';
import 'horizontal_sized_widget.dart';

class ClearApplyButtonWidget extends StatelessWidget {
  const ClearApplyButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 145,
            height: 55,
            child: TextButton(onPressed: (){}, child: Text('Clear All'),
              style: ConstantButtonStyle.clearButtonStyle,
            ),
          ),
          HorizontalSizedWidget(10.0),
          Container(
            width: 145,
            height: 55,
            child: ElevatedButton(onPressed: (){}, child: Text('Apply'),
              style: ConstantButtonStyle.applyButtonStyle,
            ),
          ),
        ]
    );
  }
}
