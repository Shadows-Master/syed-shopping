import 'package:flutter/material.dart';
import 'package:syed/helpers/constants.dart';

class EmptyBox extends StatelessWidget {
  const EmptyBox({
    @required String mHeaderTitle,
    @required String mDescription,
    Key key,
  })  : _mDescription = mDescription,
        _mHeaderTitle = mHeaderTitle,
        super(key: key);

  final String _mHeaderTitle;
  final String _mDescription;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _mHeaderTitle ?? 'Your Bag is Empty',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kAccentColor,
              fontSize: 23),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            _mDescription ??
                "When you add products to your order they'll show up here.",
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
