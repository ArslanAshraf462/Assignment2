import 'package:assignment_2/widgets/horizontal_sized_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'vertical_sized_widget.dart';

class AllReviewsWidget extends StatelessWidget {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSizedWidget(20.0),
        SizedBox(
          height: 62.0,
          width: 232.0,
          child: ElevatedButton(
            onPressed: (){},
            child: const Text('Add your review', style: TextStyle(fontSize: 18.0),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff07AD5A),
              shape:  RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
        VerticalSizedWidget(3.0),
        Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 15.0,right: 15.0,bottom: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('200 reviews'),
              GestureDetector(
                onTap: (){},
                child: Icon(Icons.filter_list_sharp),),
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
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/image.png'),
                        ),
              VerticalSizedWidget(3.0),
                        Text('John Mike',style: TextStyle(color: Color(0xffAFAFAF), fontSize: 10.0),),
                      ],
                    ),
                    HorizontalSizedWidget(15.0),
                    Column(
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

                        Container(
                          child: Text('Lorem ipsum is a placeholder text commonly '
                              'used to demonstrate the visual form '
                              'of a document or a typeface without',
                            style: TextStyle(color: Color(0xffAFAFAF),),
                          ),
                          width: 250.0,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
