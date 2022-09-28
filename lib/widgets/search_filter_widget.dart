import 'package:flutter/material.dart';

import 'text_field_widget.dart';

class SearchFilterWidget extends StatelessWidget {
  const SearchFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFieldWidget(height: 48, width: 240, hintText: 'I\'m looking for...'),
          Container(
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
        ],
      ),
    );
  }
}
