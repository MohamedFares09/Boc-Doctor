import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import flutter_svg package

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Stack(
        children: [
          SvgPicture.asset(
            // Use SvgPicture.asset for SVG images
            "assets/images/logo.svg",
            height: 100,
            width: 100,
          ),
          Positioned(
            bottom: 60,
            right: 30,
            child: Text(
              "صحتك",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
