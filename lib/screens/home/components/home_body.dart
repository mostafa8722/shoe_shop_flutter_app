import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shop_flutter_app/screens/product/product_screen.dart';

import '../../../constants.dart';
import '../../../models/products.dart';

class HomeBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_BodyState();

}
class _BodyState extends State<HomeBody>{
  List categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
          _topTab(),
          _productSection()
        ],
      ),
    );
  }
  Widget _topTab(){
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
          itemBuilder: (BuildContext context,int index)=>CardCat(context,index)),
    );
  }
  Widget CardCat(BuildContext context,int index){
    return
    Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    child:  GestureDetector(
        onTap: (){
      setState(() {
        _selectedIndex = index;
      });
    },
    child:

    _selectedIndex==index?
    Column(
    children: [
    Text(categories[index],
    style: TextStyle(color:Colors.deepPurple,fontSize: 18,fontWeight: FontWeight.w800),
    ),


    Container(
    margin: EdgeInsets.only(top: 5),
    height: 2,
    width: 100,

    decoration: BoxDecoration(
    shape:
    BoxShape.rectangle,
    color: Colors.deepPurple,
    ),
    )
    ],
    ) :
    Text(categories[index],
    style:
    TextStyle(color:Colors.black54,fontSize: 18),
    )



    ),);


  }
   Widget _productSection(){
    return Container(
      height:  products.length*140,
      child:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context,int index)=>CardProduct(context,index)) ,
    );
   }
   Widget CardProduct(BuildContext context,int index){
    return
    GestureDetector(
      onTap: (){
        Navigator.of(context).push( MaterialPageRoute(builder:(context)=>ProductScreen(product: products[index])));
      },
      child: Container(
        height: 140,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child:
            Container(
              height: 120,
              decoration: BoxDecoration(
                  color: products[index].color,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset(products[index].image),
            )
            ),
            Text(products[index].title),
            Text("\$ ${products[index].price}"),
          ],
        ),
      ),
    );
   }
}