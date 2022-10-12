import '../widgets/horizontal_sized_widget.dart';
import '../widgets/vertical_sized_widget.dart';

import '../services/categoriess_services.dart';
import 'package:provider/provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {


   CategoriesWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<CategoriesServices>(context,listen: false).getCategoriesdata();
    super.initState();
  }
  //List items=ConstantImage.itemsImageList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0,left: 24),
        child: SizedBox(
          height: 100,
         // width: 1260,
          child: Consumer<CategoriesServices>(
              builder: (context,category,_) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int index=0;index<category.newCatList.length;index++)...[
                      for(int index2=0;index2<category.newCatList[index].results!.length;index2++)...[
                        Container(
                         // height: 85,
                          //width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.network(category.newCatList[index].results![index2].iconSvg.toString()),
                                  HorizontalSizedWidget(12.0),
                                ],
                              ),
                              VerticalSizedWidget(8),
                              SizedBox(
                                height: 38,
                                  width: 60,
                                  child: Text(category.newCatList![index].results![index2].name.toString(),
                                  //softWrap: true,
                                    overflow: TextOverflow.clip,
                                  ),
                              ),
                            ],
                          ),
                          // decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //       image: NetworkImage(category.newCatList[index].results![index2].iconSvg.toString()),
                          //       fit: BoxFit.fill,
                          //     )
                          // ),
                        ),
                      ],
                    ],
                    //const SizedBox(width: 10,),
                  ],
                );
              }
          )
        ),
      ),
    );
  }
}