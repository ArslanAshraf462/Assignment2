import '../constants.dart';

import '../widgets/categories_widget.dart';
import '../widgets/home_refs_text_widget.dart';
import '../widgets/new_product_card_widget.dart';
import '../widgets/recommend_card_widget.dart';
import '../widgets/text_field_widget.dart';
import '../widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  ConstantImage.navImage, width: double.infinity,),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Center(
                    child: SizedBox(
                        height: 50,
                        width: 160,
                        child: Image.asset(ConstantImage.logoImage)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, top: 31.0, right: 24),
                  child: TextFieldWidget(
                      height: 48, width: 372, hintText: 'I\'m looking for...'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 26.0, left: 24),
                  child: Text("All Categories", style: ConstantTextStyle.homeTextHeadingStyle),
                ),
                CategoriesWidget(),
                HomeRefsTextWidget(title: "Recommended"),
                Padding(padding: const EdgeInsets.only(
                    left: 20.0, right: 24.0, top: 20),
                    child: Container(
                      width: double.infinity,
                      height: 220,
                      child: RecommendedCardWidget(),),
                ),
                HomeRefsTextWidget(title: "New products"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20),
                  child: NewProductCardWidget(),
                ),
                VerticalSizedWidget(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

