import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/widgets/forms/form_widget.dart';

class ShoppingAddressScreen extends StatefulWidget {
  ShoppingAddressScreen({Key key}) : super(key: key);

  @override
  _ShoppingAddressScreenState createState() =>
      _ShoppingAddressScreenState();
}

class _ShoppingAddressScreenState
    extends State<ShoppingAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 20),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.close,
                      color: kAccentColor,
                    ),
                    onPressed: () => Navigator.of(context).pop()),
                Stack(
                  children: [
                    Text(
                      'Add Address',
                      softWrap: true,
                      style: TextStyle(
                          fontSize: fontSize(size: 22),
                          fontWeight: FontWeight.w800,
                          foreground: Paint()
                            ..strokeWidth = 1.1
                            ..color = kAccentColor
                            ..style = PaintingStyle.stroke),
                    ),
                    Text(
                      'Add Address',
                      softWrap: true,
                      style: TextStyle(
                          fontSize: fontSize(size: 22),
                          fontWeight: FontWeight.w900,
                          foreground: Paint()
                            ..strokeWidth = 1.1
                            ..color = kAccentColor
                            ..style = PaintingStyle.stroke),
                    ),
                  ],
                ),
              ],
            ),
          ),
          BTextFormField(
            prefixIcon: Icon(Feather.search),
            hintText: 'Enter Your Address',
          )
        ],
      ),
    );
  }
}
