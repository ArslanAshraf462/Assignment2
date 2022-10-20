import '../../constants.dart';
import 'components/search_filter_widget.dart';
import 'components/search_result_gridview_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/horizontal_sized_widget.dart';
import '../../widgets/pop_screen_widget.dart';
import '../../widgets/title_widget.dart';
import '../../widgets/vertical_sized_widget.dart';

class SearchResultScreen extends StatelessWidget {
  final int idCount;
   SearchResultScreen(this.idCount);

  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColorAssets.appWhiteColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppAssets.navImage, width: double.infinity,),
                VerticalSizedWidget(25.0),
                Row(
                  children: [
                    HorizontalSizedWidget(
                      screenSize.width*0.04
                       // 20.0
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                        child: PopScreenWidget(title: AppTextAssets.homeText),
                    ),
                    HorizontalSizedWidget(
                        screenSize.width*0.15
                        //50.0
                    ),
                    TitleWidget(title: AppTextAssets.searchTitleText, fontWeight: FontWeight.normal),
                  ],
                ),
                VerticalSizedWidget(41),
                SearchFilterWidget(),
                VerticalSizedWidget(30),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenSize.width*0.05,
                      //left: 20,
                  ),
                  child:
                  idCount == 25
                      ? const Text(AppTextAssets.recommendedItemText)
                   : const Text(AppTextAssets.newProductItemText),
                ),
                VerticalSizedWidget(26),
                 SizedBox(
                  width: double.infinity,
                 height: screenSize.height*8,
                 // height: 550,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: screenSize.width*0.05,
                        right: screenSize.width*0.05,
                        // left: 20,
                        // right: 20,
                    ),
                    child: SearchResultGridViewWidget(ids: idCount,),
                  ),
                ),
                VerticalSizedWidget(60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
