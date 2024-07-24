import 'package:flutter/material.dart';
import 'package:test_project/Components/mediaquery.dart';

class PageViewWidget extends StatelessWidget {
  String image;
  PageViewWidget({required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: m_w(context)*0.5,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
