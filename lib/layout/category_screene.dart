import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_tuqa_baker/layout/profile_screen.dart';
import 'package:test_tuqa_baker/layout/shop_screen.dart';

import 'favorite_screen.dart';
import 'my_cart_screen.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  int currentIndex =2;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: SvgPicture.asset(
        'assets/images/store.svg',
        semanticsLabel: 'Acme Logo'
    ), label:'Shop' ),
    BottomNavigationBarItem(icon:
    SvgPicture.asset(
        'assets/images/explore.svg',
        semanticsLabel: 'Acme Logo'
    ), label:'Explore' ),
    BottomNavigationBarItem(icon:
    SvgPicture.asset(
        'assets/images/cart.svg',
        semanticsLabel: 'Acme Logo'
    ), label:'Cart' ),
    BottomNavigationBarItem(icon:
    SvgPicture.asset(
        'assets/images/favorite.svg',
        semanticsLabel: 'Acme Logo'
    ), label:'Favorite' ),
    BottomNavigationBarItem(icon:
    SvgPicture.asset(
        'assets/images/person.svg',
        semanticsLabel: 'Acme Logo'
    ), label:'Profile' ),
  ];

  List<Widget> screens=const[
    ShopScreen(),
    MyCart(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.indigo,
    Colors.amber,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title:const Text(
          "Find Product",
          style:TextStyle(
            fontSize: 16 ,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
          onTap: (index)
          {
            currentIndex = index;
          },
          items:bottomItems
      ),
      body: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio:0.9,
          ),
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context , index) {
            Color containerColor = colors[Random().nextInt(colors.length)];
            return CategoriesCart(
              containerColor: containerColor,
            );
          }

      ),
    );
  }
}

class CategoriesCart extends StatelessWidget{
  final Color containerColor;
  const CategoriesCart({super.key, required this.containerColor});

  @override
  Widget build(BuildContext context) =>Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: containerColor,
        width: 0.7,
      ),
      color:containerColor.withOpacity(0.2),
    ),
    margin: const EdgeInsets.all(7),
    padding: EdgeInsets.all(5),
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/myCart1.png',
          height: 90,
          width: 90,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20,),
        const Text(
          'Fresh Fruit\n & vegetable',
          style: TextStyle(
              fontSize: 14,
              fontFamily: 'Poppins',
              letterSpacing: 1,
              fontWeight: FontWeight.w400
          ),

        )
      ],
    ),
  );


}
