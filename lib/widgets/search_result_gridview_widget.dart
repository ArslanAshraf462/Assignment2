import 'package:flutter/material.dart';

import 'container_widget.dart';
import 'icon_widget.dart';

class SearchResultGridViewWidget extends StatelessWidget {
  const SearchResultGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      crossAxisCount: 2,
      //childAspectRatio: 1/3,
    ),

        itemCount: 10,
        itemBuilder: (context,index){
          return Card(
            elevation: 1,
            color: const Color(0xffFFFFFF),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: SizedBox(
              width: 170,
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 140,top: 8.0),
                    child: IconWidget(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0,),
                        child: Center(
                            child: SizedBox(
                            height: 65,
                            width: 77,
                            child: Image.asset('assets/images/image.png'))),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0,left: 10.0),
                        child: Text('UTZ Cheese Balls',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('\$4.99',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),),
                            Row(children: const [
                              Icon(Icons.star_half,color: Color(0xffF3D434),size: 14,),
                              Text('4.8',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),),
                            ],)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 8,bottom: 12.0),
                        child: Row(
                          children: const [
                            ContainerWidget(text: 'Tesco'),
                            SizedBox(width: 5,),
                            ContainerWidget(text: 'Aldi'),
                            SizedBox(width: 5,),
                            ContainerWidget(text: 'Asda'),

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
