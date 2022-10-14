import '../services/recommended_product_service.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../services/new_product_services.dart';
import '../widgets/card_widget.dart';
import '../widgets/categories_widget.dart';
import '../widgets/home_refs_text_widget.dart';
import '../widgets/recommend_card_widget.dart';
import '../widgets/text_field_widget.dart';
import '../widgets/vertical_sized_widget.dart';
import 'package:flutter/material.dart';
import 'search_result_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<RecommendedProductServices>(context,listen: false).getRecommendProductdata();
    Provider.of<NewProductServices>(context,listen: false).getNewProductdata();
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
                Consumer<RecommendedProductServices>(
                  builder: (context, snapshot,_) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                          SearchResultScreen(snapshot.data!.count!),

                      ),
                      );
                    },
                    child: HomeRefsTextWidget(title: "Recommended",
                    ),
                  );
                },),

                Padding(padding: const EdgeInsets.only(
                    left: 20.0, right: 24.0, top: 20),
                    child: Container(
                      width: double.infinity,
                      height: 220,
                      child: RecommendedCardWidget(),),
                ),
                Consumer<NewProductServices>(
                  builder: (context, snapshot,_) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                            SearchResultScreen(snapshot!.data!.count!),

                        ),
                        );
                      },
                      child: HomeRefsTextWidget(title: "New Products",
                      ),
                    );
                  },),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20),
                  child: CardWidget(),//NewProductCardWidget(),
                ),
                VerticalSizedWidget(30),
            ]
            ),
          ),
        ),
      )
      );
  }
}

