import 'package:assignment_2/widgets/categories_widget.dart';
import 'package:assignment_2/widgets/home_refs_text_widget.dart';
import 'package:assignment_2/widgets/new_product_card_widget.dart';
import 'package:assignment_2/widgets/recommend_card_widget.dart';
import 'package:assignment_2/widgets/text_field_widget.dart';
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
              Image.asset('assets/images/top_nav.png', width: double.infinity,),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Center(
                  child: SizedBox(
                      height: 50,
                      width: 160,
                      child: Image.asset('assets/images/logo.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,top: 20.0,right: 24),
                child: TextFieldWidget(height: 45, width: 377, hintText: 'I\'m looking for...'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0,left: 24),
                child: Text("All Categories",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                )),
              ),
              CategoriesWidget(),
              HomeRefsTextWidget(title: "Recommended"),
              Padding(padding: const EdgeInsets.only(left: 20.0,right: 24.0,top: 5),
              child: Container(
                  width: double.infinity,
                  height: 220,
                  child: RecommendedCardWidget(),)
              ),
              HomeRefsTextWidget(title: "New products"),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 5),
                child: Container(
                    width: 370,
                    height: 122,
                    child: NewProductCardWidget()),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
