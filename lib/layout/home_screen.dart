
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_tuqa_baker/layout/shop_screen.dart';

import 'my_cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    MyCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
          onTap: (index)
          {
            currentIndex = index;
          },
          items:bottomItems
      ),
    );
  }
}
