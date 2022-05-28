import "package:flutter/material.dart";

import 'package:shoe_shop_flutter_app/screens/splash_screen.dart';class App extends StatelessWidget{
      @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),

    );
  }
    }