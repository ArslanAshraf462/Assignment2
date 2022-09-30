import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/detail_btm_container_widget.dart';
import '../widgets/pop_screen_widget.dart';
import '../widgets/vertical_sized_widget.dart';
class DetailVenderScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Image.asset(ConstantImage.navImage, width: double.infinity,),
                VerticalSizedWidget(15.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: PopScreenWidget(title: 'Back to results')),
                ),
                Stack(
                  children: [
                    Image.asset('assets/images/Dominionsnack.png',width: 350,height: 350,),
                    Positioned(
                      top: 300,
                      left: 25,
                      bottom: 15,
                      child: IconButton(
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.info,
                        size: 14,
                        color: Colors.grey,
                      ),
                    ),)
                  ],
                ),
                DetailBottomContainerWidget(),
              ],
            ),
        ),
      ),
    );
  }
}


