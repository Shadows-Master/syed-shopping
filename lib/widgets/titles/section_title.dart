import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/helpers/spacer.dart';

class HomeSectionTitle extends StatelessWidget {
  const HomeSectionTitle({
    Key key,
    this.title,
    this.subTitle,
    this.route,
    this.pageController,
    this.mPageIndex = 1,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String route;
  final int mPageIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? 'The Holidays Edit',
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontWeight: FontWeight.w600,
                fontSize: fontSize(size: 18)),
          ),
          InkWell(
            onTap: () {
              if (pageController != null) {
                pageController.jumpToPage(mPageIndex);
              } else {
                Navigator.of(context).pushNamed(route ?? '');
              }
            },
            child: Row(
              children: [
                Text(
                  subTitle ?? 'See all',
                  softWrap: true,
                  style: TextStyle(fontSize: fontSize(size: 13)),
                ),
                SpacerWidth(size: 2),
                Icon(
                  SimpleLineIcons.arrow_right,
                  size: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
