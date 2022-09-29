import 'package:assignment_2/screens/search_result_screen.dart';
import 'package:flutter/material.dart';

class HomeRefsTextWidget extends StatelessWidget {
  final String title;
  HomeRefsTextWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 34.0,left: 24,right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),
          Row(
            children: [
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchResultScreen(),)),
                child: const Text("View all",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF3D434),
                ),),
              ),
              const Icon(Icons.arrow_forward,color: Color(0xffF3D434),size: 14,)
            ],
          ),
        ],
      ),
    );
  }
}
