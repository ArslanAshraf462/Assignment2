import 'package:flutter/material.dart';
import 'container_widget.dart';
import 'icon_widget.dart';

class NewProductCardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
      return Card(
        elevation: 1,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: SizedBox(
          width: 360,
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 315,top: 8.0,),
                child: IconWidget(),
              ),
              Row(
                children: [
                  SizedBox(
                      height: 122,
                      width: 80,
                      child: Image.asset('assets/images/Dominionsnack.png')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 9.0),
                        child: Text('No chicken burger',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      const SizedBox(
                        height: 39,
                        width: 220,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text('Lorem ipsum is a placeholder text used to demonstrate the visual',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400
                            ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Row(
                          children: [
                            const Text('\$4.99',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Row(
                                children: const [
                                  Icon(Icons.star_half,color: Color(0xffF3D434),size: 14,),
                                  Text('4.8',style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  ),),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 30.0),
                              child: ContainerWidget(text: 'Tesco',),
                            ),
                            const SizedBox(width: 5,),
                            ContainerWidget(text: 'Aldi'),
                            const SizedBox(width: 5,),
                            ContainerWidget(text: 'Asda'),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },);
  }
}