import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:syed/helpers/config_size.dart';
import 'package:syed/helpers/constants.dart';
import 'package:syed/views/Tabs/account_page_view.dart';
import 'package:syed/views/Tabs/home_page_view.dart';
import 'package:syed/views/Tabs/order_page_view.dart';
import 'package:syed/views/Tabs/search_page_view.dart';
import 'package:syed/views/Tabs/shopping_bag_page_view.dart';

class BottomBarView extends StatefulWidget {
  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int _mIndex = 0;
  final List<Widget> mPages = [
    HomePageView(),
    SearchPageView(),
    ShoppingBagPageView(),
    OrderPageView(),
    AccountPageView()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      body: mPages.elementAt(_mIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _mIndex,
        backgroundColor: kAccentColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _mIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Feather.home),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Feather.search),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Feather.shopping_bag),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(SimpleLineIcons.organization),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Feather.user),
              title: Text(
                '',
                style: TextStyle(fontSize: 0),
              )),
        ],
      ),
    );
  }
}
