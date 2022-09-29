import 'package:assignment_2/widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class VendorRatingWidget extends StatelessWidget {
  double rating = 0;

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
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                const Text(
                  '200 reviews ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff00A651),
                      ),
                    ))
              ],
            ),
          ],
        ),
        Column(
          children: <Widget>[
            const Text(
              'Give your rating',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
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

// Row(
//   children: const <Widget>[
//     Icon(
//       Icons.star_border,
//       size: 20,
//       color: Color(0xffF3D434),
//     ),
//     Icon(
//       Icons.star_border,
//       size: 20,
//       color: Color(0xffF3D434),
//     ),
//     Icon(
//       Icons.star_border,
//       size: 20,
//       color: Color(0xffF3D434),
//     ),
//     Icon(
//       Icons.star_border,
//       size: 20,
//       color: Color(0xffF3D434),
//     ),
//     Icon(
//       Icons.star_border,
//       size: 20,
//       color: Color(0xffF3D434),
//     ),
//   ],
// )