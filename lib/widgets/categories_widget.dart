import '../constants.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {

  List items=ConstantImage.itemsImageList;

   CategoriesWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0,left: 24),
      child: SizedBox(
        height: 70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 79,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: items[index],fit: BoxFit.fill,
                      )
                  ),
                ),
                const SizedBox(width: 10,)
              ],
            );
          },
        ),
      ),
    );
  }
}