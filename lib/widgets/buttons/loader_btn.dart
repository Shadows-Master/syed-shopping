import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LoaderButton extends StatelessWidget {
  const LoaderButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 25,
      animationDuration: 1500,
      animation: true,
      lineWidth: 2,
      percent: 1.0,
      progressColor: Colors.white,
    );
  }
}
