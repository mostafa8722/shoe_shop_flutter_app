import 'package:flutter/material.dart';

import '../../models/products.dart';

class ProductScreen extends StatelessWidget{
  Product product;
  ProductScreen({required this.product});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: product.color,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:200 ,

              child:  Container( height: 200,
                child:

                Stack(
                  children: [

                    Positioned(
                        top: 20,
                        left: 30,
                        child:
                        Text(product.title,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                    ),
                    Positioned(
                        bottom: 40,
                        left: 30,
                        child:
                        Text("price",style: TextStyle(fontSize:16,color: Colors.white,))
                    ),
                    Positioned(
                        bottom: 20,
                        left: 30,
                        child:
                        Text("\$ ${product.price}",style: TextStyle(fontSize:16,color: Colors.white,))
                    ),
                    Positioned(
                        bottom: 0,
                        right: 30,
                        child:
                        Image.asset(product.image,)
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height - 200,
              padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )
              ),
              child: Expanded(
                child:Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(

                          children: [
                            Text("color"),
                            SizedBox(height: 5,),
                            Row(children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: product.color
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:Colors.amber
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blueAccent
                                ),
                              ),

                            ],)
                          ],),
                        Column(
                          children: [
                            Text("size"),
                            SizedBox(height: 5,),
                            Text("${product.size} cm"),
                          ],
                        )

                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      child:  Text(
                          product.description
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(color: Color(0xffdddddd),width: 1)
                            ),
                            child: Center(child: Icon(Icons.minimize),),
                          ),
                        ),
                        SizedBox(width: 6,),
                        Text("0",style: TextStyle(fontSize: 20),),
                        SizedBox(width: 6,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(color: Color(0xffdddddd),width: 1)
                            ),
                            child: Center(child: Icon(Icons.add),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(children: [
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffdddddd),width: 1)
                          ),
                          child: Center(child: Icon(Icons.shopping_cart),),
                        ),
                      ),
                      SizedBox(width: 4,),
                      Expanded(
                          child:  GestureDetector(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: product.color
                              ),
                              child: Center(child:Text("Buy Now".toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 20),),),
                            ),
                          )),
                      SizedBox(width: 6,),
                    ],)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}