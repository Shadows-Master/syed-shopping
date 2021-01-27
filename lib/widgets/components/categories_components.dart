import 'package:flutter/material.dart';
import 'package:syed/helpers/constants.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.75,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black38.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(image ?? 'assets/images/health.jpg'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
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
