import 'package:flutter/material.dart';

class FloatingActionBtnWidget extends StatelessWidget {
  final VoidCallback onPressed;
FloatingActionBtnWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: const Color(0xff07AD5A),
      child: const Icon(Icons.search),
    );
  }
}