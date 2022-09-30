import '../constants.dart';
import '../widgets/category_vender_widget.dart';
import '../widgets/elevated_btn_widget.dart';

import '../widgets/circular_favorite_icon_widget.dart';
import '../widgets/vender_rating_widget.dart';
import '../widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';
class DetailBottomContainerWidget extends StatelessWidget {
  const DetailBottomContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      child: Column(
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
                    const Text(
                      'Veggie Wendy the Worm',
                      style: ConstantTextStyle.detailBtmHeadngTxtStyle,
                    ),
                    VerticalSizedWidget(4),
                    const Text(
                      'Units: 100 g ',
                      style: ConstantTextStyle.detailBtmUnitTxtStyle,
                    ),
                  ],
                ),
                CircularFavoriteIconWidget(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24,top: 12),
            child: Text(
              '£4.50',
              style: ConstantTextStyle.detailBtmPriceTxtStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24,right: 24,top: 18),
            child: VendorRatingWidget(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24,top: 20),
            child: Text(
              'Categories',
              style: ConstantTextStyle.vendrRtgCategoryTxtStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 140,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryVenderWidget(text: 'Snack', height: 38, width: 79),
                CategoryVenderWidget(text: 'Kids', height: 38, width: 54),
                CategoryVenderWidget(text: 'Sweets', height: 38, width: 84),
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
      ),
    );
  }
}