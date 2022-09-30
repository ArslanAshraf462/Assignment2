import 'package:flutter/material.dart';

class BottomContainerWidget extends StatelessWidget {
  final Widget child;
  final Widget closeIcon;
  BottomContainerWidget({required this.child,required this.closeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 670,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffFFFFFF).withOpacity(1.0),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 330,
            right: 40,
            top: 5,
            child: closeIcon,
          ),
          child,
        ],
      ),
    );
  }
}
