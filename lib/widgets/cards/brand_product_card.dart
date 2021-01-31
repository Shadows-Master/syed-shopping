import 'package:flutter/material.dart';
import 'package:syed/helpers/constants.dart';

class BrandProductCard extends StatelessWidget {
  const BrandProductCard({
    Key key,
    this.mWidth,
    this.mHeight,
    this.mTitle,
    this.mImage,
    this.mHorizontal = 0,
    this.mVertical = 0,
  }) : super(key: key);

  final double mWidth;
  final double mHeight;
  final String mTitle;
  final String mImage;
  final double mHorizontal;
  final double mVertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight ?? 160,
      width: mWidth ?? 160,
      margin:
          EdgeInsets.symmetric(horizontal: mHorizontal, vertical: mVertical),
      decoration: BoxDecoration(
          color: Colors.black87.withOpacity(.7),
          borderRadius: BorderRadius.circular(5)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: .5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(mImage ?? 'assets/images/shoes.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Text(
            mTitle ?? 'Nouveau container',
            softWrap: true,
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize(size: 18),
                fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}
