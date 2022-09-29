import 'package:flutter/material.dart';

import '../widgets/detail_btm_container_widget.dart';
import '../widgets/pop_screen_widget.dart';
import '../widgets/vertical_sized_widget.dart';
class DetailVenderScreen extends StatelessWidget {
  const DetailVenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Image.asset('assets/images/top_nav.png', width: double.infinity,),
                VerticalSizedWidget(15.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: PopScreenWidget(title: 'Back to results'),
                ),
                VerticalSizedWidget(15.0),
                Image.asset('assets/images/Dominionsnack.png',width: 300,height: 300,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35.0, bottom: 0,top: 0),
                    child: IconButton(
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.info,
                        size: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                DetailBottomContainerWidget(),
              ],
            ),
        ),
      ),
    );
  }
}


