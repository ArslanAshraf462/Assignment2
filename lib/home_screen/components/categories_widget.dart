import '../../constants.dart';
import '../../widgets/horizontal_sized_widget.dart';
import '../../widgets/vertical_sized_widget.dart';
import '../../services/categoriess_services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'category_datail_widget.dart';

class CategoriesWidget extends StatelessWidget {

   CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<CategoriesServices>(context,listen: false).getCategoriesdata();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0,left: 24),
        child: SizedBox(
          height: 100,
         // width: 1260,
          child: Consumer<CategoriesServices>(
              builder: (context,category,_) {
                if(category.isloaded)
                  {
                    return Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //for(int index=0;index<category.newCatList.length;index++)...[
                        for(int index2=0;index2<category.data!.results!.length;index2++)...[
                          GestureDetector(
                            onTap: () {
                              // name= category.data!.results![index2].name.toString();
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => CategoryDetailWidget(
                              //       namee: category.data!.results![index2].name.toString(),)));
                            },
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.network(category.data!.results![index2].iconSvg.toString(),
                                    alignment: Alignment.center,
                                    ),
                                    HorizontalSizedWidget(12.0),
                                  ],
                                ),
                                VerticalSizedWidget(8),
                                SizedBox(
                                  height: 38,
                                  width: 78,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 12),
                                    child: Text(category.data!.results![index2].name.toString(),
                                        //softWrap: true,
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.clip,
                                      ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    );
                  }
              return Container(
                  height: 100,
                  width: 350,
                  child: Center(child: CircularProgressIndicator(),));
              }
          )
        ),
      ),
    );
  }
}