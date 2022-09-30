import 'package:flutter/material.dart';

import '../constants.dart';

class BottomBarBtnWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final int pageNumber;
  final VoidCallback onPressed;
  BottomBarBtnWidget({required this.title,required this.icon,required this.pageNumber,required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          selectedPage==pageNumber? Icon(icon,color: Color(0xff07AD5A),): Icon(icon,color: Colors.grey,),
          selectedPage == pageNumber? Text(title,style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff07AD5A),
          ),): Text(title,style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),),
        ],
      ),
    );
  }
}


