
import 'package:flutter/material.dart';
import 'package:test_tuqa_baker/shared/components/default_buttom.dart';
import 'package:test_tuqa_baker/shared/styles/constant.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: (){},icon:const Icon(Icons.keyboard_arrow_left, size: 40,)), // Icon at the start
          title:const Text('Beverages', style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: 'Poppins'
          ),
          ),
        centerTitle: true,
        leadingWidth: 50,// Text in the middle
          actions: [
            Container(
              margin:const EdgeInsets.only(right: 20),
              padding: EdgeInsets.all(0),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Center(child: IconButton(onPressed: (){}, icon:const Icon(Icons.add,color: Colors.white, size: 30,), )),

            )// Icon at the end
          ],
        ),
      body:GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio:0.6,
          ),
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context , index)=>ItemCart()
      ) ,
    );

  }
}


class ItemCart extends StatefulWidget{
  ItemCart({super.key});

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) =>Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border:Border.all(
          width: 0.7,
          color:Colors.grey
      ),
    ),
    margin: const EdgeInsets.all(7),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Image.asset(
              'assets/images/cola1.png',
              height: 90,
              width: 60,
            ),
          ),
        ),
        const SizedBox(height: 20,),
        const Padding(
          padding:  EdgeInsets.fromLTRB(20,0,0,0),
          child:  Text(
            'Diet Coke',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                letterSpacing: 1,
                fontWeight: FontWeight.w400
            ),

          ),
        ),
        const SizedBox(height: 10,),
        const Padding(
          padding:  EdgeInsets.fromLTRB(20,0,0,0),
          child:  Text(
            '355ml,\nPrice',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.grey
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1, left: 22),
          child:  Row(
            children:[
              const Text(
                '\$1.99',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300
                ),

              ),
              const SizedBox(width: 30,),
              Container(
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                   color: primaryColor,
                  ),
                child: IconButton(
                  onPressed: (){
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
                                        IconButton(onPressed: (){}, icon:const Icon(Icons.close,size:25,)),
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
                    },
                  icon:const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ]

          ),
        ),
      ],
    ),
  );
}
