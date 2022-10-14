import 'package:provider/provider.dart';

import '../constants.dart';
import '../screens/all_reviews_filter_screen.dart';
import '../services/reviews_services.dart';
import '../widgets/horizontal_sized_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'elevated_btn_widget.dart';
import 'vertical_sized_widget.dart';

class AllReviewsWidget extends StatefulWidget {
  final int id3;
  AllReviewsWidget(this.id3);

  @override
  State<AllReviewsWidget> createState() => _AllReviewsWidgetState();
}

class _AllReviewsWidgetState extends State<AllReviewsWidget> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<ReviewsServices>(context,listen: false).getReviewData();
    super.initState();
  }
  int a=0;

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
                child: Consumer<ReviewsServices>(
                    builder: (context,review,_) {
                    return review.data != null ? ListView.builder(
                      itemCount: review.data!.results!.length,
                      itemBuilder: (context, index2) {

                          if(review.isloaded){
                            if(widget.id3==review.data!.results![index2].productId){
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
                                        Text(review.data!.results![index2].username.toString(),
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
                                            rating=review.data!.results![index2].rating!.toDouble();
                                          },
                                          itemSize: 15.0,
                                          updateOnDrag: false,
                                          initialRating: review.data!.results![index2].rating!.toDouble(),
                                          maxRating: review.data!.results![index2].rating!.toDouble(),
                                        ),

                                        SizedBox(
                                          width: 250.0,
                                          child: Text(review.data!.results![index2].review.toString(),
                                            style: TextStyle(color: Color(0xffAFAFAF),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }
                          }

                        return Container();
                      },) : SizedBox.shrink();
                  }
                ),
              ),
           // ],
          ],
        );
  }
}
