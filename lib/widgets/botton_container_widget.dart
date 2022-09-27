import 'package:flutter/material.dart';

class BottomContainerWidget extends StatelessWidget {
  final Widget child;
  BottomContainerWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffFFFFFF).withOpacity(0.5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 350,
            right: 30,
            top: 20,
            child: Icon(Icons.close,color: Color(0xffAFAFAF),),),
          child,
        ],
      ),
    );
  }
}
