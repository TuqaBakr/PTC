import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio:0.9,
        ),
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context , index) {
          return CategoriesCart();
        }

    );
  }
}

class CategoriesCart extends StatelessWidget{
  const CategoriesCart({super.key});

  @override
  Widget build(BuildContext context) =>Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey,
    ),
    margin: const EdgeInsets.all(7),
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/myCart1.png',
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20,),
        const Text(
          'Fresh Fruit\n & vegetable',
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              letterSpacing: 1,
              fontWeight: FontWeight.w400
          ),

        )
      ],
    ),
  );


}
