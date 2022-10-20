import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryVenderWidget extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  CategoryVenderWidget({required this.text,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: AppColorAssets.vendorCategoryColor),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColorAssets.vendorCategoryColor,
          ),
        ),
      ),
    );
  }
}
