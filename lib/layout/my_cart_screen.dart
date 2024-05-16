import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text('My Cart', style: TextStyle(
            fontFamily: 'Poppins', 
            fontWeight: FontWeight.w400,
            fontSize: 30,
          ),),
        ),
        ...List.generate(
            10,
                (index) => CustomCartList(
              name:"Bell Pepper Red",
              price:"10",
              image:"assets/images/cola4.png",
              count: "10",)
        )
      ],
    );
  }
}

class CustomCartList extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final String image;
  const CustomCartList({
    Key? key,
    required this.name,
    required this.price,
    required this.count,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(child:Row( children: [

        Expanded(
            flex:2,
            child:Image.asset(
              image,
              height: 80,//MediaQuery.of(context).size.width /3,
              width: 80,//MediaQuery.of(context).size.width ,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
        ),

        Expanded(
            flex:2,
            child:Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                  children :[
                    Text(
                      name,
                      style:const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold

                      ),),
                    const SizedBox(height: 6,),
                    Text(price + "\$",
                      style:const TextStyle(
                          color: Colors.black,
                          fontSize:13
                      ),),
                  ]



              ),
            )),
        Expanded(
            child:Column(children: [
              const Icon(Icons.production_quantity_limits_rounded,color: Colors.grey,),
              const SizedBox(height: 5,),//  const Icon(Icons.production_quantity_limits_rounded),
              Text(count, style: const TextStyle(fontFamily:"sans", color: Colors.black, fontWeight:FontWeight.bold),),
              // IconButton(onPressed: onRemove, icon:const Icon(Icons.remove)),
            ],)),
      ],)
      ),
    );
  }
}
