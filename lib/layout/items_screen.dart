
import 'package:flutter/material.dart';
import 'package:test_tuqa_baker/shared/styles/constant.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: (){},icon:const Icon(Icons.keyboard_arrow_left, size: 40,)), // Icon at the start
          title:const Center(
            child: Text('Beverages', style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              fontFamily: 'Poppins'
            ),),
          ), // Text in the middle
          actions: [
            Container(
              margin:const EdgeInsets.only(right: 20),
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
          itemBuilder: (context , index)=>const ItemCart()
      ) ,
    );

  }
}


class ItemCart extends StatelessWidget{
  const ItemCart({super.key});

  @override
  Widget build(BuildContext context) =>Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border:Border.all(
          width: 1,
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
              height: 100,
              width: 70,
              fit: BoxFit.fill,
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
                  borderRadius: BorderRadius.circular(15),
                   color: primaryColor,
                  ),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white, size: 30,), ),

              )
            ]

          ),
        ),
      ],
    ),
  );


}
