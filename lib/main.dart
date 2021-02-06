import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:syed/helpers/theme.dart';
import 'package:syed/providers/shopping_bag_provider.dart';
import 'package:syed/routes.dart';

main(List<String> args) {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ShoppingBagProvider>(
            create: (_) => ShoppingBagProvider())
      ],
      child: ShopApp(),
    ),
  );
}

class ShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness
          .light, //status bar brightness//status barIcon Brightness
    ));
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
    );
  }
}
