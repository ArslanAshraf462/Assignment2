import '../dummy.dart';
import '../widgets/card_widget.dart';
import 'package:flutter/material.dart';


class NewProductCardWidget extends StatelessWidget {

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