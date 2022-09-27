import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  List _items = [
    'Highest rating',
    'Lowest rating',
    'Most recent',
    'Oldest',
    'Default'
  ];
  int? current;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return  ListTile(
          title: Text(_items[index].toString(), style: TextStyle(fontWeight: FontWeight.bold),),
          leading: Radio(
            fillColor:
            MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) => Color(0xff07AD5A)),
            value: index,
            groupValue: current,
            onChanged: (value) {
              setState(() {
                current=value;
              });
            },
          ),
        );
      },),);
  }
}
