import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/core/Product.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/helpers/spacer.dart';

class ShoppingBagProductDetails extends StatelessWidget {
  const ShoppingBagProductDetails({
    Key key,
    @required Product mProduct,
  })  : _mProduct = mProduct,
        super(key: key);

  final Product _mProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 105),
      child: Row(
        children: [
          Text(
            'QTY',
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontWeight: FontWeight.w700,
                fontSize: fontSize(size: 15)),
          ),
          SpacerWidth(
            size: 8,
          ),
          Text(
            '${_mProduct.quantity}',
            softWrap: true,
            style: TextStyle(
                color: kAccentColor,
                fontWeight: FontWeight.w700,
                fontSize: fontSize(size: 15)),
          ),
          SpacerWidth(
            size: 8,
          ),
          Icon(
            SimpleLineIcons.arrow_down,
            color: kAccentColor,
            size: 15,
          )
        ],
      ),
    );
  }
}
