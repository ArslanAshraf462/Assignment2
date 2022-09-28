import 'package:flutter/material.dart';

import '../widgets/new_product_card_widget.dart';
import '../widgets/text_field_widget.dart';
import '../widgets/title_widget.dart';
import '../widgets/vertical_sized_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                children: [
                  Image.asset('assets/images/top_nav.png', width: double.infinity,),
                  VerticalSizedWidget(15.0),
                  TitleWidget(title: 'Favorites', fontWeight: FontWeight.normal),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,top: 20.0,right: 24),
                    child: TextFieldWidget(height: 45, width: 377, hintText: 'I\'m looking for...'),
                  ),
                  VerticalSizedWidget(18.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 5),
                    child: Container(
                        width: 370,
                        height: 480,
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

