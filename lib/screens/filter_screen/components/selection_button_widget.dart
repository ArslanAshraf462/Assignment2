import 'package:flutter/material.dart';

class SelectionButtonWidget extends StatefulWidget {
  final String text;
  SelectionButtonWidget({required this.text});

  @override
  State<SelectionButtonWidget> createState() => _SelectionButtonWidgetState();
}

class _SelectionButtonWidgetState extends State<SelectionButtonWidget> {
  bool _hasBeenPressed=false;
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Container(
      height: screenSize.height*0.05,
      width: screenSize.width*0.28,
      // height: 42,
      // width: 110,
      child: ElevatedButton(
        onPressed: (){
          setState(() {
            _hasBeenPressed=!_hasBeenPressed;
          });
        },
        child: Text(widget.text,
          style: TextStyle(
            color: _hasBeenPressed ? Color(0xffFFFFFF) : Color(0xff00A651),
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: _hasBeenPressed ? Color(0xff00A651) : Color(0xffFFFFFF),
          side: BorderSide(color: Color(0xff00A651),width: 1),
          shape:  RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(45.0),
          ),
        ),
      ),
    );
  }
}

