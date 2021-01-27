import 'package:flutter/material.dart';
import 'package:syed/helpers/constants.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    Key key,
    this.image,
    this.title,
    this.height,
    this.width,
    this.radius,
    this.padding,
    this.vertical = 0,
  }) : super(key: key);

  final String image;
  final String title;
  final double height;
  final double width;
  final double radius;
  final double padding;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: vertical),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.85,
            child: Container(
              height: height ?? 100,
              width: width ?? 100,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(1),
                  borderRadius: BorderRadius.circular(radius ?? 50),
                  image: DecorationImage(
                      image: AssetImage(image ?? 'assets/images/health.jpg'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: padding ?? 32.0),
                child: Text(
                  title ?? 'Personal Care',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize(size: 16),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
