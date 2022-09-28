import 'package:flutter/material.dart';

class FloatingActionBtnWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color(0xff07AD5A),
      child: const Icon(Icons.search),
    );
  }
}