import 'package:flutter/material.dart';

List item = [
  'Rating',
  'Most Popular',
  'Lowest Price',
  'Highest Price',
  'Your search (default)'
];
List itemz = [
  'Highest rating',
  'Lowest rating',
  'Most recent',
  'Oldest',
  'Default'
];
int selectedPage = 0;

class ConstantImage{
  static const String navImage= 'assets/images/top_nav.png';
  static const String logoImage ='assets/images/logo.png';
  static const List itemsImageList=[
     AssetImage('assets/images/dessert.png'),
     AssetImage('assets/images/snacks.png'),
    AssetImage('assets/images/breakfast.png'),
     AssetImage('assets/images/beer.png'),
     AssetImage('assets/images/sausage.png'),
     AssetImage('assets/images/milk.png'),
     AssetImage('assets/images/FastFood.png'),
     AssetImage('assets/images/Dinner.png'),
     AssetImage('assets/images/BBQ.png'),
     AssetImage('assets/images/Partyfood.png'),
     AssetImage('assets/images/Kids.png'),
  ];
}

class ConstantTextStyle{
  static const TextStyle textFieldWidgetStyle= TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle viewAllTextStyle= TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xffF3D434),
  );
  static const TextStyle homeTextHeadingStyle=TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle recommendTextHeadStyle=TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600
  );
  static const TextStyle recommendTextBodyStyle=TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400
  );
  static const TextStyle containerWidgetTextStyle=TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: Color(0xff00A651)
  );
  static const TextStyle productBodyHeadingStyle=TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600
  );
  static const TextStyle productBodyDetailTextStyle=TextStyle(
      color: Color(0xffE3E3E3),
      fontSize: 10,
      fontWeight: FontWeight.w400
  );
  static const TextStyle productBodyPriceStyle=TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600
  );
  static const TextStyle productBodyRatingStyle=TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400
  );
  static const filterSrnFilterHeadingStyle= TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
  );
  static const filterSrnSuperMrktStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const filterSrnResetStyle = TextStyle(
    color: Color(0xff61AB43),
    fontSize: 18,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationThickness: 2,
  );
  static const TextStyle  sortBy= TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle detailBtmHeadngTxtStyle=TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle detailBtmUnitTxtStyle=TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: Color(0xffC8C8C8),
  );
  static const TextStyle detailBtmPriceTxtStyle=TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Color(0xff00A651),
  );
  static const TextStyle reviewNameTxtStyle =TextStyle(
      color: Color(0xffAFAFAF),
      fontSize: 10.0
  );
  static const vendorRatingWidgetTxtStyle=TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const vendorRtgWgtSeeAllTxtStyle=TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xff00A651),
  );
  static const vendrRtgCategoryTxtStyle= TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const vendrProductTxtStyle=TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const vendrCTSMTxtStyle=TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );
}

class ConstantButtonStyle{
  static final ButtonStyle clearButtonStyle = TextButton.styleFrom(
    foregroundColor: Color(0xff9F9F9F),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
    side: BorderSide(color: Color(0xff9F9F9F), width: 1,),
  );
  static final ButtonStyle applyButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color(0xff9F9F9F),
    shape:  RoundedRectangleBorder(
      borderRadius:  BorderRadius.circular(30.0),
    ),
  );
}
