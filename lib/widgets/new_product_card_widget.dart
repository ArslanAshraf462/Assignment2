// import 'package:assignment_2/services/new_product_services.dart';
//
// import '../dummy.dart';
// import '../widgets/card_widget.dart';
// import 'package:flutter/material.dart';
//
//
// class NewProductCardWidget extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     NewProductServices newProductServices =NewProductServices();
//     return FutureBuilder(
//       future: newProductServices.getNewProductdata(),
//       builder: (context,snapshot) {
//         return Column(
//           children: newProductServices.newProList.map((catData) {
//             return Expanded(
//               flex: 4,
//               child: ListView.builder(
//                 itemCount: newProductServices.newProList.length,
//                 itemBuilder: (context,index) {
//                   return ListView.builder(
//                     itemCount: newProductServices.newProList![index].results!.length,
//                     itemBuilder: (context,num) {
//                       return CardWidget(
//                         text: '',
//                         image: catData.results![index].imageUrl.toString(),
//                         heading: catData.results![index].name.toString(),
//                         price: catData.results![index].vendors![num].price!.price.toString(),
//                         rating: '0.0',
//                         text1: catData.results![index].vendors![num].vendor.toString(),
//                         text2: catData.results![index].vendors![num].vendor.toString(),
//                         text3: catData.results![index].vendors![num].vendor.toString(),
//                       );
//                     }
//                   );
//                 }
//               ),
//             );
//           },
//           ).toList()
//         );
//       }
//     );
//   }
// }