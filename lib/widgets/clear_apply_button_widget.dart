import 'package:flutter/material.dart';

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
              style: TextButton.styleFrom(
                foregroundColor: Color(0xff9F9F9F),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
                side: BorderSide(color: Color(0xff9F9F9F), width: 1,),
              ),
            ),
          ),
          HorizontalSizedWidget(10.0),
          Container(
            width: 145,
            height: 55,
            child: ElevatedButton(onPressed: (){}, child: Text('Apply'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff9F9F9F),
                shape:  RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ]
    );
  }
}
