import 'package:flutter/material.dart';


class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  ElevatedButtonWidget({required this.text,required this.width,required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: (){},
        child: Text( text, style: TextStyle(fontSize: 18.0),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff07AD5A),
          shape:  RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
