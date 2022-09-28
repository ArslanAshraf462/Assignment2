import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final String text;
  const ContainerWidget({
    Key? key,required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
            width: 1,
            color: const Color(0xff00A651)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0,right: 4.0,top: 1.0,bottom: 1.0),
        child: Text(text,style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Color(0xff00A651)
        ),),
      ),
    );
  }
}