import '../../constants.dart';
import 'package:flutter/material.dart';

class HomeRefsTextWidget extends StatelessWidget {
  final String title;
  // final Function onTap;
  HomeRefsTextWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 34.0,left: 24,right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: ConstantTextStyle.homeTextHeadingStyle
          ),
          Row(
            children: [
              const Text("View all",style: ConstantTextStyle.viewAllTextStyle,
              ),
              const Icon(Icons.arrow_forward,color: Color(0xffF3D434),size: 14,)
            ],
          ),
        ],
      ),
    );
  }
}
