import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {

  final List items=[
    const AssetImage('assets/images/dessert.png'),
    const AssetImage('assets/images/snacks.png'),
    const AssetImage('assets/images/breakfast.png'),
    const AssetImage('assets/images/beer.png'),
    const AssetImage('assets/images/sausage.png'),
    const AssetImage('assets/images/milk.png'),
    const AssetImage('assets/images/FastFood.png'),
    const AssetImage('assets/images/Dinner.png'),
    const AssetImage('assets/images/BBQ.png'),
    const AssetImage('assets/images/Partyfood.png'),
    const AssetImage('assets/images/Kids.png'),
  ];

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