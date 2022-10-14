import '../widgets/card_widget.dart';

import '../constants.dart';
import 'package:flutter/material.dart';
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
                  Image.asset(ConstantImage.navImage, width: double.infinity,),
                  VerticalSizedWidget(15.0),
                  TitleWidget(title: 'Favorites', fontWeight: FontWeight.normal),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,top: 13.0,right: 24),
                    child: TextFieldWidget(height: 48, width: 372, hintText: 'I\'m looking for...'),
                  ),
                  VerticalSizedWidget(29.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                     child: CardWidget(),
                  ),
                  VerticalSizedWidget(35),
                ],
              ),
          ),
        ),
      ),
    );
  }
}

