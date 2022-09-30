import 'package:flutter/material.dart';

import '../constants.dart';
import 'container_widget.dart';
import 'favorite_icon_widget.dart';
class RecommendedCardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
      return Card(
          elevation: 1,
          color: const Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: SizedBox(
            width: 170,
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 140,top: 8.0),
                  child: FavoriteIconWidget(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0,),
                      child: Center(child: SizedBox(
                          height: 105,
                          width: 77,
                          child: Image.asset('assets/images/image.png'))),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0,left: 10.0),
                      child: Text('UTZ Cheese Balls',style: ConstantTextStyle.recommendTextHeadStyle),),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('\$4.99',style: ConstantTextStyle.recommendTextBodyStyle),
                          Row(children: const [
                            Icon(Icons.star_half,color: Color(0xffF3D434),size: 14,),
                            Text('4.8',style: ConstantTextStyle.recommendTextBodyStyle),
                          ],)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 8,bottom: 12.0),
                      child: Row(
                        children: const [
                          ContainerWidget(text: 'Tesco',width: 36,
                            height: 18,),
                          SizedBox(width: 5,),
                          ContainerWidget(text: 'Aldi',
                            height: 18,
                            width: 23,),
                          SizedBox(width: 5,),
                          ContainerWidget(text: 'Asda',width: 36,
                            height: 18,),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
    },);

  }
}



