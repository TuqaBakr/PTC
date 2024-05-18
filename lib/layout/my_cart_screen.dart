import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_tuqa_baker/layout/category_screene.dart';
import 'package:test_tuqa_baker/layout/favorite_screen.dart';
import 'package:test_tuqa_baker/layout/profile_screen.dart';
import 'package:test_tuqa_baker/layout/shop_screen.dart';

import '../shared/components/default_buttom.dart';
import '../shared/styles/constant.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int currentIndex =2;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: SvgPicture.asset(
        'assets/images/store.svg',
        semanticsLabel: 'Acme Logo'
    ), label:'Shop' ),
    BottomNavigationBarItem(icon:
    SvgPicture.asset(
        'assets/images/explore.svg',
        color: Colors.grey,
        semanticsLabel: 'Acme Logo'
    ), label:'Explore' ),
    BottomNavigationBarItem(icon:
    SvgPicture.asset(
        'assets/images/cart.svg',
        color: primaryColor,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 1,
          currentIndex: 2,
          onTap: (index)
          {
            currentIndex = index;
          },
          items:bottomItems
      ),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title:const Text(
          "My Cart",
          style:TextStyle(
            fontSize: 19 ,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding:const EdgeInsets.all(6),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFE6E6E6),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset('assets/images/myCart3.png')),
                        Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(" Bananas",
                                    style: TextStyle(
                                      fontSize: 15 ,
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  subtitle: Text(
                                    "  1.Kg,Price",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xFF7C7C7C),
                                    ),
                                  ),
                                ),
                                Row(
                                  //crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const SizedBox(width: 20,),
                                    MaterialButton(
                                        height: 15,
                                        minWidth: 15,
                                        shape:RoundedRectangleBorder (
                                            side: const BorderSide(
                                                color:Color(0xFFC4BDBD),
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                        ),
                                        onPressed: () {},

                                     child:const Icon(
                                       Icons.remove,
                                       size: 35,
                                       color: primaryColor,)),
                                    const SizedBox(width: 15,),
                                    const Text("2",style: TextStyle(fontSize: 15),),
                                    const  SizedBox(width: 15,),
                                    MaterialButton(
                                        height: 15,
                                        minWidth: 15,
                                        shape:RoundedRectangleBorder (
                                          side: const BorderSide(
                                            color:Color(0xFFC4BDBD),
                                          ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        onPressed: () {},
                                        child:const Icon(
                                          Icons.add,
                                          size: 35,
                                          color: primaryColor,)),
                                  ],
                                ),
                              ],
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: (){} ,
                                icon:const Icon( Icons.close,color: Color(0xFFB3B3B3),)),
                            const SizedBox(height: 20,),
                            const Text("3.00\$",style: TextStyle(fontFamily: 'Poppins', fontSize: 14,),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFE6E6E6),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset('assets/images/myCart3.png')),
                        Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  title: Text(" Bananas",
                                    style: TextStyle(
                                      fontSize: 15 ,
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  subtitle: Text(
                                    "  1.Kg,Price",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF7C7C7C),
                                    ),
                                  ),
                                ),
                                Row(
                                  //crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const SizedBox(width: 20,),
                                    MaterialButton(
                                        height: 15,
                                        minWidth: 15,
                                        shape:RoundedRectangleBorder (
                                          side: const BorderSide(
                                            color:Color(0xFFC4BDBD),
                                          ),
                                          borderRadius: BorderRadius.circular(60),
                                        ),
                                        onPressed: () {},

                                        child:const Icon(
                                          Icons.remove,
                                          size: 35,
                                          color: primaryColor,)),
                                    const SizedBox(width: 15,),
                                    const Text("2",style: TextStyle(fontSize: 15),),
                                    const  SizedBox(width: 15,),
                                    MaterialButton(
                                        height: 15,
                                        minWidth: 15,
                                        shape:RoundedRectangleBorder (
                                          side: const BorderSide(
                                            color:Color(0xFFC4BDBD),
                                          ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        onPressed: () {},
                                        child:const Icon(
                                          Icons.add,
                                          size: 35,
                                          color: primaryColor,)),
                                  ],
                                ),
                              ],
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: (){} ,
                                icon:const Icon( Icons.close,color: Color(0xFFB3B3B3),)),
                            const SizedBox(height: 20,),
                            const Text("3.00\$",style: TextStyle(fontFamily: 'Poppins', fontSize: 14,),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                const SizedBox(
                  height:200,),
                DefaultButton(
                  text: 'Go to Checkout',
                  color: primaryColor,
                  onPressed: (){
                    print('Go to checkout');
                    showBottomSheet(
                        context: context,
                        builder: (BuildContext context){
                          return Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFF2F3F2),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                            ),
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Add',
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold
                                          ),),
                                        SizedBox(
                                          height: 20,),
                                        Text(
                                          'Name',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize: 18

                                          ),

                                        ),
                                        SizedBox(
                                          height: 20,),
                                        Text(
                                          'Description',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize:18

                                          ),

                                        ),
                                        SizedBox(
                                          height: 20,),
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize: 18

                                          ),

                                        ),
                                        SizedBox(
                                          height: 20,),
                                        Text(
                                          'Image',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Poppins',
                                              fontSize: 18

                                          ),

                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 150,),
                                    Column(
                                      children: [
                                        IconButton(onPressed: (){}, icon:const Icon(Icons.close,size:30,)),
                                        const SizedBox(height: 150,),
                                        IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_right))
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,),
                                DefaultButton(
                                  text: 'Add Item',
                                  color: primaryColor,
                                  onPressed: (){},),


                              ],
                            ),

                          );
                        }
                    );
                  },),

              ],
            ),
          )
        ],
      ),
    );
  }
}
