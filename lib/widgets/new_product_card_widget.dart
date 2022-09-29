import 'package:assignment_2/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class Category{
  final String image;
  final String heading;
  final String text;
  final String price;
  final String rating;
  final String text1;
  final String text2;
  final String text3;
  Category({
    required this.image,
    required this.heading,
    required this.text,
    required this.price,
    required this.rating,
    required this.text1,
    required this.text2,
    required this.text3,
});
}

class NewProductCardWidget extends StatelessWidget {

 List DUMMY_CATEGORIES = [
   Category(image: 'assets/images/Dominionsnack.png',
     heading: "Veggie wendy the worm",
     text: 'UTZ Cheese Balls',
     price: '\$4.99',
     rating: '4.8',
     text1: 'Tesco',
     text2: 'Aldi',
     text3: 'Asda',
   ),
   Category(image: 'assets/images/Dominionsnack.png',
     heading: "Veggie wendy the worm",
     text: 'UTZ Cheese Balls',
     price: '\$4.99',
     rating: '4.8',
     text1: 'Tesco',
     text2: 'Aldi',
     text3: 'Asda',
   ),
   Category(image: 'assets/images/Dominionsnack.png',
     heading: "Veggie wendy the worm",
     text: 'UTZ Cheese Balls',
     price: '\$4.99',
     rating: '4.8',
     text1: 'Tesco',
     text2: 'Aldi',
     text3: 'Asda',
   ),
   Category(image: 'assets/images/Dominionsnack.png',
     heading: "Veggie wendy the worm",
     text: 'UTZ Cheese Balls',
     price: '\$4.99',
     rating: '4.8',
     text1: 'Tesco',
     text2: 'Aldi',
     text3: 'Asda',
   ),
   Category(image: 'assets/images/Dominionsnack.png',
     heading: "Veggie wendy the worm",
     text: 'UTZ Cheese Balls',
     price: '\$4.99',
     rating: '4.8',
     text1: 'Tesco',
     text2: 'Aldi',
     text3: 'Asda',
   ),
   Category(image: 'assets/images/Dominionsnack.png',
     heading: "Veggie wendy the worm",
     text: 'UTZ Cheese Balls',
     price: '\$4.99',
     rating: '4.8',
     text1: 'Tesco',
     text2: 'Aldi',
     text3: 'Asda',
   ),
 ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: DUMMY_CATEGORIES.map((catData) => CardWidget(
          text: catData.text,
          image: catData.image,
          heading: catData.heading,
          price: catData.price,
          rating: catData.rating,
          text1: catData.text1,
          text2: catData.text2,
          text3: catData.text3),
      ).toList()
    );
  }
}