import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'home/home_screen.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: HomeScreen(),
        text: "Shoes Shop App",
        imageSrc: "assets/images/mountains.jpg",
        textStyle: TextStyle(fontFamily: "Signatra",fontSize: 50,letterSpacing: 10.0),
        textType: TextType.ColorizeAnimationText,
        duration: 3000,
        colors: [
          Colors.purple,
          Colors.blue,
          Colors.yellow,
          Colors.red,
        ],
      ),
    );
  }
}