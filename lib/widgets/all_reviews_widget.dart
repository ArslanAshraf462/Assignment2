import '../constants.dart';
import '../screens/all_reviews_filter_screen.dart';
import '../widgets/horizontal_sized_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'elevated_btn_widget.dart';
import 'vertical_sized_widget.dart';

class AllReviewsWidget extends StatelessWidget {
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
            height: 450.0,
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
                child: AllReviewsFilterScreen(child: IconButton(
                  onPressed: () => Navigator.pop(ctx),
                  icon: const Icon(Icons.close,color: Color(0xffAFAFAF),
                  ),
                ),),
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSizedWidget(20.0),
        ElevatedButtonWidget(
          text: 'Add your review',
        width: 232.0,
        height: 62.0,),
        Padding(
          padding: const EdgeInsets.only(top: 11.0,left: 15.0,right: 15.0,bottom: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('200 reviews'),
              GestureDetector(
                onTap: () =>startAddNewTransaction(context),
                child: Icon(Icons.tune),),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 6.0,),
          child: Divider(),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 25.0,top: 15.0 ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/image.png'),
                        ),
                         VerticalSizedWidget(3.0),
                        const Text('John Mike',
                          style: ConstantTextStyle.reviewNameTxtStyle,
                        ),
                      ],
                    ),
                    HorizontalSizedWidget(15.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          itemBuilder: (context, _) {
                            return Icon(Icons.star, color: Colors.amber,);
                          },
                          onRatingUpdate: (rating) {
                            this.rating=rating;
                          },
                          itemSize: 15.0,
                          updateOnDrag: true,
                          minRating: 1.0,
                        ),

                        const SizedBox(
                          width: 250.0,
                          child: Text('Lorem ipsum is a placeholder text commonly '
                              'used to demonstrate the visual form '
                              'of a document or a typeface without',
                            style: TextStyle(color: Color(0xffAFAFAF),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },),
        )
      ],
    );
  }
}
