import 'package:flutter/material.dart';
import 'package:syed/helpers/config_size.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/helpers/spacer.dart';

class ElectronicsProductDetailsScreen extends StatefulWidget {
  const ElectronicsProductDetailsScreen({
    Key key,
  }) : super(key: key);

  @override
  _ElectronicsProductDetailsScreenState createState() =>
      _ElectronicsProductDetailsScreenState();
}

class _ElectronicsProductDetailsScreenState
    extends State<ElectronicsProductDetailsScreen> {
  final String _mLabel = "XBOX";
  final String _mDesignation = "XBOX Series X Game Console";
  final String _mPrice = "499.99";
  final String _mDescription = productDescription;
  final String _mImage = "assets/images/xbox-preview.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            child: Stack(
              children: [
                ProductDetails(
                    mImage: _mImage,
                    mLabel: _mLabel,
                    mDesignation: _mDesignation,
                    mPrice: _mPrice,
                    mDescription: _mDescription),
                Positioned(
                  top: 30,
                  left: 20,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => Navigator.of(context).pop(),
                    child: CircleAvatar(
                      backgroundColor: kAccentColor,
                      radius: 20,
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key key,
    @required String mImage,
    @required String mLabel,
    @required String mDesignation,
    @required String mPrice,
    @required String mDescription,
  })  : _mImage = mImage,
        _mLabel = mLabel,
        _mDesignation = mDesignation,
        _mPrice = mPrice,
        _mDescription = mDescription,
        super(key: key);

  final String _mImage;
  final String _mLabel;
  final String _mDesignation;
  final String _mPrice;
  final String _mDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 0, bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 350,
            decoration: BoxDecoration(
                color: kPrimaryLightColor.withOpacity(.03),
                image: DecorationImage(
                    image: AssetImage(_mImage), fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _mLabel,
                  softWrap: true,
                  style: TextStyle(
                      fontSize: fontSize(size: 12),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  _mDesignation,
                  softWrap: true,
                  style: TextStyle(
                      fontSize: fontSize(size: 26),
                      color: kAccentColor,
                      fontWeight: FontWeight.w900),
                ),
                SpacerHeight(size: 5),
                Text(
                  '\$$_mPrice',
                  softWrap: true,
                  style: TextStyle(
                      fontSize: fontSize(size: 17),
                      color: kAccentColor,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  _mDescription,
                  softWrap: true,
                  maxLines: 15,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      letterSpacing: 0.6,
                      height: 1.5,
                      fontSize: fontSize(size: 16),
                      color: kAccentColor,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 30),
            child: ButtonTheme(
              minWidth: ConfigSize.screenWidth,
              height: 60,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: kAccentColor,
                child: Text(
                  'Enter Access Code',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize(size: 15)),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
