import 'package:assignment_2/screens/filters_screen.dart';
import 'package:flutter/material.dart';

import 'text_field_widget.dart';

class SearchFilterWidget extends StatelessWidget {
   void startAddNewTransaction(BuildContext ctx){
     showModalBottomSheet(
         isScrollControlled: true,
       shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.only(
                 topLeft: const Radius.circular(50),
                 topRight: const Radius.circular(50),),
           ),

         context: ctx,
         builder: (builder){
           return Container(
             height: 670.0,
             color: Colors.transparent, //could change this to Color(0xFF737373),
             //so you don't have to change MaterialApp canvasColor
             child: Container(
                 decoration: const BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(50.0),
                         topRight: Radius.circular(50.0))),
                 child: GestureDetector(
                   child: FiltersScreen(),
                   onTap: () {},
                   behavior: HitTestBehavior.opaque,
                 ),
                 ),
           );
         }
     );
     }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFieldWidget(height: 48, width: 240, hintText: 'I\'m looking for...'),
          GestureDetector(
            onTap: () => startAddNewTransaction(context),
            child: Container(
              height: 48,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Color(0xff00A651),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 0.3,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Filters',style: TextStyle(color: Colors.white),),
                    Icon(Icons.filter_list_sharp,color: Colors.white,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
