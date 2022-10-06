import 'package:assignment_2/services/recommended_product_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import 'container_widget.dart';
import 'favorite_icon_widget.dart';
class RecommendedCardWidget extends StatefulWidget {

  @override
  State<RecommendedCardWidget> createState() => _RecommendedCardWidgetState();
}

class _RecommendedCardWidgetState extends State<RecommendedCardWidget> {

  @override
  Widget build(BuildContext context) {
    RecommendedProductServices productServices = RecommendedProductServices();
    return  FutureBuilder(
      future: productServices.getRecommendProductdata(),
      builder: (context,snapshot) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productServices.recommendProList.length,
            itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 220,
                  width: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                    itemCount: productServices.recommendProList[index].results!.length,
                    itemBuilder: (context, pro) {
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
                                          child: Image.network(snapshot.data![index].results![pro].imageUrl.toString()))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0,left: 10.0),
                                      child: Text(snapshot.data![index].results![pro].name.toString(),
                                          overflow: TextOverflow.ellipsis,
                                          style: ConstantTextStyle.recommendTextHeadStyle),),
                                    Padding(
                                      padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 7.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                           Container(
                                             height: 18,
                                             width: 40,
                                             child: ListView.builder(
                                               itemCount: snapshot.data![index].results![pro].vendors!.length,
                                               itemBuilder: (context,num) {
                                                 return Text('\$${snapshot.data![index].results![pro].vendors![num].price!.price}',

                                                     style: ConstantTextStyle.recommendTextBodyStyle);
                                               }
                                             ),
                                           ),
                                          Row(children: [
                                            const Icon(Icons.star_half,color: Color(0xffF3D434),size: 14,),
                                            Text(snapshot.data![index].results![pro].reviews!.avgRating.toString(),style: ConstantTextStyle.recommendTextBodyStyle),
                                          ],)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0,left: 8,bottom: 12.0),
                                      child: Container(
                                        height: 20,
                                        width: 120,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: snapshot.data![index].results![pro].vendors!.length,
                                          itemBuilder: (context,numb) {
                                            return Row(
                                              children: [
                                                snapshot.data![index].results![pro].vendors![numb].vendor!.isEmpty
                                                    ? Container()
                                                : ContainerWidget(text: snapshot.data![index].results![pro].vendors![numb].vendor!.toString(),width: 36,
                                                  height: 18,),
                                                 SizedBox(width: 5,),
                                                // snapshot.data![index].results![pro].vendors![numb].vendor!.isEmpty
                                                //     ? Container()
                                                //     : ContainerWidget(text: snapshot.data![index].results![pro].vendors![numb].vendor!.toString(),
                                                //   height: 18,
                                                //   width: 36,),
                                                // SizedBox(width: 5,),
                                                // snapshot.data![index].results![pro].vendors![numb].vendor!.isEmpty
                                                //     ? Container()
                                                //     : ContainerWidget(text: snapshot.data![index].results![pro].vendors![numb].vendor!.toString(),width: 36,
                                                //   height: 18,),

                                              ],
                                            );
                                          }
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
                  ),
                ),
              ],
            );
          },
        );
      }
    );

  }
}



