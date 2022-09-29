import 'package:assignment_2/widgets/favorite_icon_widget.dart';
import 'package:flutter/material.dart';

class CircularFavoriteIconWidget extends StatelessWidget {
  const CircularFavoriteIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: FavoriteIconWidget(),
    );
  }
}