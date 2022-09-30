import 'package:flutter/material.dart';

import '../constants.dart';
import 'container_widget.dart';
import 'favorite_icon_widget.dart';

class CardWidget extends StatelessWidget {
  final String text;
  final String heading;
  final String price;
  final String rating;
  final String image;
  final String text1;
  final String text2;
  final String text3;
  const CardWidget({Key? key, required this.text,required this.heading ,required this.image,required this.price,required this.rating,required this.text1,required this.text2,required this.text3}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: SizedBox(
        width: 379,
        height: 122,
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 300,top: 8.0,),
              child: FavoriteIconWidget(),
            ),
            Row(
              children: [
                SizedBox(
                    height: 110,
                    width: 110,
                    child: Image.asset(image)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: Text(heading,style: ConstantTextStyle.productBodyHeadingStyle),
                    ),
                    SizedBox(
                      height: 39,
                      width: 220,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(text,
                          style: ConstantTextStyle.productBodyDetailTextStyle,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15.0),
                      child: Row(
                        children: [
                          Text(price,style: ConstantTextStyle.productBodyPriceStyle,),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Row(
                              children: [
                                const Icon(Icons.star_half,color: Color(0xffF3D434),size: 14,),
                                Text(rating,style: ConstantTextStyle.productBodyRatingStyle,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: ContainerWidget(
                              width: 36,
                              height: 18,
                              text: text1,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          ContainerWidget(text: text2,
                          height: 18,
                          width: 23,),
                          const SizedBox(width: 5,),
                          ContainerWidget(text: text3,
                          height: 18,
                          width: 32,),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



