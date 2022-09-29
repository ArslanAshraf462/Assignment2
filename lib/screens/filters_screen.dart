import 'package:assignment_2/widgets/botton_container_widget.dart';
import 'package:assignment_2/widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/clear_apply_button_widget.dart';
import '../widgets/radio_button_widget.dart';

class FiltersScreen extends StatelessWidget {
  List items = [
    'Rating',
    'Most Popular',
    'Lowest Price',
    'Highest Price',
    'Your search (default)'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Stack(
                  textDirection: TextDirection.ltr,
                  clipBehavior: Clip.none,
                  children: [
                   BottomContainerWidget(child: Column(
                     children: [
                       VerticalSizedWidget(60.0),
                       RadioButtonWidget(items: items,),
                       const Padding(
                         padding: EdgeInsets.only(right: 250),
                         child: Text('Filters',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                       ),
                       VerticalSizedWidget(8),
                       Padding(
                         padding: const EdgeInsets.only(left: 18,right: 18),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: const [
                             Text('Supermarkets',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                             Text('Reset',style: TextStyle(
                                 color: Color(0xff61AB43),
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                                 decoration: TextDecoration.underline,
                               decorationThickness: 2,
                             ),
                             ),
                           ],
                         ),
                       ),
                       VerticalSizedWidget(18),
                       Padding(
                           padding: EdgeInsets.only(left: 15,right: 20),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                             SelectionButtonWidget(text: 'Tesco',),
                             SelectionButtonWidget(text: 'Aldi',),
                             SelectionButtonWidget(text: 'Asda',),
                           ],),
                           VerticalSizedWidget(15),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                             SelectionButtonWidget(text: 'Sainsbury\'s',),
                             SelectionButtonWidget(text: 'Lidl',),
                             SelectionButtonWidget(text: 'Ocado',),
                           ],),
                         ],
                       ),
                       ),
                       VerticalSizedWidget(70),
                       ClearApplyButtonWidget(),
                       VerticalSizedWidget(25),
                     ],
                   )),
                    const Padding(
                      padding: EdgeInsets.only(left: 33,top: 25,),
                      child: Text('Sort by',
                        style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ),
    );
  }
}
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
    return Container(
      height: 42,
      width: 110,
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

