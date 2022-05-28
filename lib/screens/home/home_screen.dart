import 'package:flutter/material.dart';

import 'components/home_body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       body: HomeBody(),
      appBar: customAppBar(),
    );
  }
  AppBar customAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      brightness: Brightness.light,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.deepPurple,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.deepPurple,)),
      ],
    );
  }
}