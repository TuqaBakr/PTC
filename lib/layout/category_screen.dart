import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_tuqa_baker/shared/styles/constant.dart';

import 'explor_screen.dart';
import 'my_cart_screen.dart';
import 'shop_screen.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({super.key});

  int currentIndex = 0 ;

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
    ExploreScreen(),
    MyCartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(
          child: Text('Find Products', style: TextStyle(
            fontFamily: 'Poppins-ExtraLight',
            fontSize: 20,
          ),),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index)
          {
            currentIndex = index;
          },
          items:bottomItems
      ),
      body:screens[currentIndex]
    );
  }
}
