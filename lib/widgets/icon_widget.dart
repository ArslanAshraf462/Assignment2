import 'package:flutter/material.dart';
class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<IconWidget> createState() => _IconWidgetState();
}
bool _isSelected=false;
class _IconWidgetState extends State<IconWidget> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected=!_isSelected;
        });
      },
        child:_isSelected ?const Icon(Icons.favorite,color: Colors.red,):
    const Icon(Icons.favorite_border_outlined,color: Colors.red,)
    );
  }
}

