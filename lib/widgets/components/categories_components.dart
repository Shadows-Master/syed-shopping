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
    this.mVertical = 0,
    this.mHorizontal = 5,
    this.isCircle = true,
  }) : super(key: key);

  final String image;
  final String title;
  final double height;
  final double width;
  final double radius;
  final double padding;
  final double mVertical;
  final double mHorizontal;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: mHorizontal, vertical: mVertical),
      height: height ?? 110,
      width: width ?? 110,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            kPrimaryBbnColor.withOpacity(.8),
            kPrimaryBbnColor.withOpacity(.8)
          ]),
          shape: (!isCircle) ? BoxShape.rectangle : BoxShape.circle),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.55,
            child: Container(
              height: height ?? 110,
              width: width ?? 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius ?? 55),
                  image: DecorationImage(
                      image: AssetImage(image ?? 'assets/images/health.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Text(
            title ?? 'Personal Care',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize(size: 17),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
