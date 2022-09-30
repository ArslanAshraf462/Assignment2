import '../constants.dart';
import '../screens/all_reviews_screen.dart';
import '../widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class VendorRatingWidget extends StatelessWidget {
  double rating = 0;
  void startAddNewTransaction(BuildContext ctx){
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),),
        ),

        context: ctx,
        builder: (builder){
          return Container(
            height: 670.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0))),
              child: GestureDetector(
                onTap: () {},
                behavior: HitTestBehavior.opaque,
                child: AllReviews(child: IconButton(
                  onPressed: () => Navigator.pop(ctx),
                  icon: const Icon(Icons.close,color: Color(0xffAFAFAF),
                  ),
                ),
                ),
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            VerticalSizedWidget(10),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.star_half,
                  size: 20,
                  color: Color(0xffF3D434),
                ),
                Text(
                  '4.8  Rating',
                  style: ConstantTextStyle.vendorRatingWidgetTxtStyle,
                )
              ],
            ),
            Row(
              children: <Widget>[
                const Text(
                  '200 reviews ',
                  style: ConstantTextStyle.vendorRatingWidgetTxtStyle,
                ),
                TextButton(
                    onPressed: () =>startAddNewTransaction(context),
                    child: const Text(
                      'See all',
                      style: ConstantTextStyle.vendorRtgWgtSeeAllTxtStyle,
                    ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: <Widget>[
            const Text(
              'Give your rating',
              style: ConstantTextStyle.vendorRatingWidgetTxtStyle,
            ),
            const SizedBox(
              height: 12,
            ),
            RatingBar.builder(
              itemBuilder: (context, _) {
                return Icon(Icons.star, color: Colors.amber,);
              },
              onRatingUpdate: (rating) {
                this.rating=rating;
              },
              itemPadding: EdgeInsets.zero,
              itemSize: 20.0,
              updateOnDrag: true,
              minRating: 1.0,
            ),
          ],
        ),
      ],
    );
  }
}