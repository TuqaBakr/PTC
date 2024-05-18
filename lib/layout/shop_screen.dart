
import 'package:flutter/material.dart';
import 'category_screene.dart';


class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context , index) =>const SizedBox(width: 10,),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return const Text('lalal'); //CategoriesCart();
          }
      ),
    );
  }
}
