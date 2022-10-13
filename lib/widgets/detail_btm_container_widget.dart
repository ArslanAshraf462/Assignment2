import 'package:assignment_2/services/product_detail_services.dart';
import 'package:assignment_2/widgets/horizontal_sized_widget.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../widgets/category_vender_widget.dart';
import '../widgets/elevated_btn_widget.dart';

import '../widgets/circular_favorite_icon_widget.dart';
import '../widgets/vender_rating_widget.dart';
import '../widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';
class DetailBottomContainerWidget extends StatefulWidget {
  const DetailBottomContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailBottomContainerWidget> createState() => _DetailBottomContainerWidgetState();
}

class _DetailBottomContainerWidgetState extends State<DetailBottomContainerWidget> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<ProductDetailServices>(context,listen: false).getProductDetaildata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProductDetailServices productDetailServices = ProductDetailServices();
    return Container(
      height: 533,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
            ),
          ]
      ),
      child: FutureBuilder(
        future: productDetailServices.getProductDetaildata(),
        builder: (context,snapshot) {
          return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 31),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                             SizedBox(
                               width: 250,
                               height: 70,
                               child: Text(
                                snapshot.data!.name.toString(),
                                //overflow: TextOverflow.ellipsis,
                                 softWrap: true,
                                style: ConstantTextStyle.detailBtmHeadngTxtStyle,
                            ),
                             ),
                            VerticalSizedWidget(4),
                             Text(
                              'Units: ${snapshot.data!.units.toString()}',
                              style: ConstantTextStyle.detailBtmUnitTxtStyle,
                            ),
                          ],
                        ),
                        CircularFavoriteIconWidget(),
                      ],
                    ),
                  ),
                  // for(int pri=0;pri<snapshot.data!.vendors!.length;pri++)...[
                     Padding(
                       padding: EdgeInsets.only(left: 24,top: 12),
                       child: Text(
                         snapshot.data!.vendors![0].price!.price.toString(),
                         style: ConstantTextStyle.detailBtmPriceTxtStyle,
                       ),
                     ),
                //   ],
                  Padding(
                    padding: EdgeInsets.only(left: 24,right: 24,top: 18),
                    child: VendorRatingWidget(
                      ratings: snapshot.data!.reviews!.avgRating.toString(),
                      reviews: snapshot.data!.reviews!.ratingCount.toString(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24,top: 20),
                    child: Text(
                      'Categories',
                      style: ConstantTextStyle.vendrRtgCategoryTxtStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       for(int cat=0;cat<snapshot.data!.categories!.length;cat++)...[
                          CategoryVenderWidget(text: snapshot.data!.categories![cat].toString(), height: 38, width: 90),
                          HorizontalSizedWidget(8),
                        ],
                        // CategoryVenderWidget(text: 'Kids', height: 38, width: 54),
                        // CategoryVenderWidget(text: 'Sweets', height: 38, width: 84),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,top: 19),
                    child: Row(
                      children: const [
                        Text(
                          'Product Notes ',
                          style: ConstantTextStyle.vendrProductTxtStyle,
                        ),
                        Text(
                          '(click to see more)',
                          style: ConstantTextStyle.vendrCTSMTxtStyle,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24,top: 8),
                    child: SizedBox(
                      width: 367,
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ipsum...',
                      style: TextStyle(
                        color: Color(0xffAFAFAF)
                      ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22,top: 30,right: 18),
                    child: ElevatedButtonWidget(text: 'Tesco', width: 350, height: 56),
                  ),
                ],
          );
        }
      ),
    );
  }
}