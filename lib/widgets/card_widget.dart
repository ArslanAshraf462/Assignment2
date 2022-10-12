import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../services/new_product_services.dart';
import 'container_widget.dart';
import 'favorite_icon_widget.dart';

class CardWidget extends StatefulWidget {
  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
 @override
  void initState() {
    // TODO: implement initState
   Provider.of<NewProductServices>(context,listen: false).getNewProductdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //NewProductServices newProductServices =NewProductServices();
    return Column(
      children: [
        // Container(
        //   height: 600,
        //     width: 100,
        //     child: FutureBuilder(
        //   future: newProductServices.getNewProductdata(),
        //   builder: (context, snapshot) {
         // return
           Consumer<NewProductServices>(
             builder: (context,snapshot,_) {
               return Column(
                children: [
                  for(int index = 0; index < snapshot.newProList.length; index++)...[
                    for(int index2 =0; index2 < snapshot.newProList[index].results!.length ; index2++)...[
                      Card(
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
                                      child: Image.network(snapshot.newProList[index].results![index2].imageUrl.toString())),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 9.0),
                                        child: SizedBox(
                                          height: 60,
                                          width: 200,
                                          child: Text(snapshot.newProList[index].results![index2].name.toString(),
                                              style: ConstantTextStyle.productBodyHeadingStyle),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   // height: 39,
                                      //   // width: 220,
                                      //   child: Padding(
                                      //     padding: const EdgeInsets.only(top: 0.0),
                                      //     child: Text('',
                                      //       style: ConstantTextStyle.productBodyDetailTextStyle,),
                                      //   ),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:15.0),
                                        child: Row(
                                          children: [
                                            for(int index3 = 0; index3 < snapshot.newProList![index].results![index2].vendors!.length; index3++)...[
                                              Text('\$' + snapshot.newProList[index].results![index2].vendors![index3].price!.price.toString(),style: ConstantTextStyle.productBodyPriceStyle,),
                                            ],

                                            Padding(
                                              padding: const EdgeInsets.only(left: 12.0),
                                              child: Row(
                                                children: [
                                                  const Icon(Icons.star_half,color: Color(0xffF3D434),size: 14,),
                                                  Text('rating',style: ConstantTextStyle.productBodyRatingStyle,),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 30.0),
                                              child: ContainerWidget(
                                                width: 36,
                                                height: 18,
                                                text: 'text1',
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            ContainerWidget(text: 'text2',
                                              height: 18,
                                              width: 23,),
                                            const SizedBox(width: 5,),
                                            ContainerWidget(text: 'text3',
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
                      ),
                    ]
                  ]
                ],
          );
             }
           ),
        ],
    );

  }
}



