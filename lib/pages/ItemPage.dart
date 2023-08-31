// ignore_for_file: unnecessary_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoppingapp/widget/ItemAppBar.dart';
import 'package:shoppingapp/widget/ItemBottomnavBar.dart';

class ItemPage extends StatelessWidget {
  final String image;
  ItemPage({super.key, required this.image});
  List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFEDECF2),
      body: Column(
        children: [
          ItemAppBAr(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(image,height: 300,),
          ),
          Expanded(
            child: Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 30,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 48, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                "Product Title",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Color(0xFF4C53A5),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) => Icon(
                                  Icons.favorite,
                                  color: Color(0xFf4C53A5),
                                ),
                                onRatingUpdate: (index) {},
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(0, 3))
                                        ]),
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      size: 18,
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "01",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF4C53A5)),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(0, 3))
                                        ]),
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "The is more detailed description of the product. you can write here more about the product.This is lengthy description. ",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xFf4C53A5)),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Text(
                                "Size:",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF4C53A5),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  for (int j = 5; j <= 10; j++)
                                    Container(
                                      height: 30,
                                      width: 30,
                                      alignment: Alignment.center,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 8,
                                            )
                                          ]),
                                      child: Text(
                                        "$j",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4C53A5)),
                                      ),
                                    )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Color:",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF4C53A5),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                for (int j = 0; j < 5; j++)
                                  Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                        color: clrs[j],
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 8,
                                          )
                                        ]),
                                  )
                              ],
                            ),
                          
                          SizedBox(height: 10,)
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
      bottomNavigationBar: ItembottomNavBar(),
    );
  }
}