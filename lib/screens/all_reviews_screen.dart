import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AllReviews extends StatelessWidget {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/top_nav.png', width: double.infinity,),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: (){
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined),
                      Text('Back'),
                    ],
                  ),
                ),
                SizedBox(width: 20.0,),
                Text('Veggie Wendy the Worm',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 38.0,),
            Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffFFFFFF).withOpacity(0.5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.0,),
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
                      ),),
                    ),
                  ),
                  SizedBox(height: 3.0,),
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
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text('John Mike',style: TextStyle(color: Color(0xffAFAFAF), fontSize: 10.0),),
                              ],
                            ),
                            SizedBox(width: 15.0,),
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
                                     // softWrap: true,
                                     //   maxLines: 3,
                                     //   textDirection: TextDirection.rtl,
                                     //   overflow: TextOverflow.ellipsis,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
