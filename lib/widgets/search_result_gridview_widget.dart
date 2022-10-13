import '../services/recommended_product_service.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../screens/details_1_vender_screen.dart';
import 'package:flutter/material.dart';

import '../services/new_product_services.dart';
import 'container_widget.dart';
import 'favorite_icon_widget.dart';

class SearchResultGridViewWidget extends StatefulWidget {
  final int id;
  SearchResultGridViewWidget({required this.id});

  @override
  State<SearchResultGridViewWidget> createState() => _SearchResultGridViewWidgetState();
}

class _SearchResultGridViewWidgetState extends State<SearchResultGridViewWidget> {
  @override
  void initState() {
    // TODO: implement initState
   // Provider.of<RecommendedProductServices>(context,listen: false).getRecommendProductdata();
    Provider.of<NewProductServices>(context,listen: false).getNewProductdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    RecommendedProductServices recommendedProductServices=RecommendedProductServices();
    NewProductServices newProductServices= NewProductServices();

    return Column(
      children: [
      if(widget.id==25)...[
    Container(
      width: double.infinity,
      height: 500,
      child: FutureBuilder(
      future: recommendedProductServices.getRecommendProductdata(),
      builder: (context, snapshot) {
      if (snapshot.hasData) {
      return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      crossAxisCount: 2,
      //childAspectRatio: 1/3,
      ),

      itemCount: snapshot.data!.results!.length,
      itemBuilder: (context, index) {
      return GestureDetector(
      onTap: () {
        id = snapshot.data!.results![index].id;
      Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
      return DetailVenderScreen();
      },));
      },
      child: Column(
      children: [
      //if(snapshot.data!.count == 25)...[
      Card(
      elevation: 1,
      color: const Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0)),
      child: SizedBox(
      width: 170,
      child: Stack(
      children: [
      const Padding(
      padding: EdgeInsets.only(left: 140, top: 8.0),
      child: FavoriteIconWidget(),
      ),
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
      padding: const EdgeInsets.only(
      top: 12.0,),
      child: Center(
      child: SizedBox(
      height: 65,
      width: 77,
      child: Image.network(
      snapshot.data!.results![index]
          .imageUrl.toString()))),
      ),
       Padding(
      padding: const EdgeInsets.only(
      top: 8.0, left: 10.0),
      child: Text(snapshot.data!.results![index].name.toString(),
      overflow: TextOverflow.ellipsis,
      style: ConstantTextStyle
          .recommendTextHeadStyle,),
      ),
      Padding(
      padding: const EdgeInsets.only(
      left: 10.0, right: 10.0, top: 7.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment
          .spaceBetween,
      children: [
        Container(
          height: 17,
          width: 40,
          child: ListView.builder(
              itemCount: snapshot.data!.results![index].vendors!.length,
              itemBuilder: (context,num) {
                return Text('\$${snapshot.data!.results![index].vendors![num].price!.price}',

                    style: ConstantTextStyle.recommendTextBodyStyle);
              }
          ),
        ),
      Row(children: [
      const Icon(Icons.star_half,
      color: Color(0xffF3D434),
      size: 14,),
        Text(snapshot.data!.results![index].reviews!.avgRating.toString(),style: ConstantTextStyle.recommendTextBodyStyle),
      ],),
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
                itemCount: snapshot.data!.results![index].vendors!.length,
                itemBuilder: (context,numb) {
                  return Row(
                    children: [
                      snapshot.data!.results![index].vendors![numb].vendor!.isEmpty
                          ? Container()
                          : ContainerWidget(text: snapshot.data!.results![index].vendors![numb].vendor!.toString(),width: 36,
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
      ),
      ],

   // ],
      ),
      );
      }
      );
      }
      return Center(child: CircularProgressIndicator());
      }
      ),
    ),
      ],
        if(widget.id==75)...[
          Container(
            width: double.infinity,
            height: 480,
            child: FutureBuilder(
                future: newProductServices.getNewProductdata(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 2.0,
                          crossAxisSpacing: 2.0,
                          crossAxisCount: 2,
                          //childAspectRatio: 1/3,
                        ),

                        itemCount: snapshot.data!.results!.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              id = snapshot.data!.results![index].id;
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return DetailVenderScreen();
                                  },));
                            },
                            child: Column(
                              children: [
                                //if(snapshot.data!.count == 25)...[
                                Card(
                                  elevation: 1,
                                  color: const Color(0xffFFFFFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)),
                                  child: SizedBox(
                                    width: 170,
                                    child: Stack(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 140, top: 8.0),
                                          child: FavoriteIconWidget(),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 12.0,),
                                              child: Center(
                                                  child: SizedBox(
                                                      height: 65,
                                                      width: 77,
                                                      child: Image.network(
                                                          snapshot.data!.results![index]
                                                              .imageUrl.toString()))),
                                            ),
                                             Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 10.0),
                                              child: Text(snapshot.data!.results![index].name.toString(),
                                                overflow: TextOverflow.ellipsis,
                                                style: ConstantTextStyle
                                                    .recommendTextHeadStyle,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0, right: 10.0, top: 7.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 17,
                                                    width: 40,
                                                    child: ListView.builder(
                                                        itemCount: snapshot.data!.results![index].vendors!.length,
                                                        itemBuilder: (context,num) {
                                                          return Text('\$${snapshot.data!.results![index].vendors![num].price!.price}',

                                                              style: ConstantTextStyle.recommendTextBodyStyle);
                                                        }
                                                    ),
                                                  ),
                                                  Row(children: const [
                                                    Icon(Icons.star_half,
                                                      color: Color(0xffF3D434),
                                                      size: 14,),
                                                    Text('0.0', style: ConstantTextStyle
                                                        .recommendTextBodyStyle,),
                                                  ],)
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0, left: 8, bottom: 12.0),
                                              child: Row(
                                                children: const [
                                                  ContainerWidget(text: 'Tesco',
                                                    width: 36,
                                                    height: 18,),
                                                  SizedBox(width: 5,),
                                                  ContainerWidget(text: 'Aldi',
                                                    height: 18,
                                                    width: 23,),
                                                  SizedBox(width: 5,),
                                                  ContainerWidget(text: 'Asda',
                                                    width: 36,
                                                    height: 18,),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],

                              // ],
                            ),
                          );
                        }
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                }
            ),
          ),
        ]
      ],
    );

  }
}
