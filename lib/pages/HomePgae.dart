// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shoppingapp/widget/CategoriesWidget.dart';
import 'package:shoppingapp/widget/item_widget.dart';

import '../widget/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Image.asset("images/1.png"),
      body: ListView(children: [
        HomeAppBar(),
        Container(
          
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35)
            )
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.camera_alt,size: 27,color: Color(0xFF4C53A5),),
                    
                  ],
                ),
              ),
              Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10
                      ),
                      child: Text(
                        "Cartegories",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                    ),
              CategoriesWidget(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Text("Best Selling",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C53A5)
                ),),
              ),
              ItemWidget()

            ],
          ),
        )
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          
        },
        height: 60,
        color: Color(0xFF4C53A5),
        items: [
        Icon(Icons.home,
        size: 30,
        color: Colors.white,),
        Icon(CupertinoIcons.cart_fill,
        size: 30,
        color: Colors.white,),
        Icon(Icons.list,
        size: 30,
        color: Colors.white,),
      
      ]),
    );
  }
}