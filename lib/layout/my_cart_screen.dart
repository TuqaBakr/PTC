import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        title:const Text(
          "My Cart",
          style:TextStyle(
            fontSize: 20 ,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding:const EdgeInsets.all(8),
            child: Column(
              children: [
                Card(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Image.asset("assets/images/1.png")),
                      Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              const ListTile(
                                title: Text("Organic Bananas",
                                  style: TextStyle( fontSize: 15 ,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,),),
                                subtitle: Text("1.Kg,Price"),

                              ),
                              Row(
                                children: [
                                  MaterialButton(
                                      height: 30,
                                      minWidth: 1,
                                      shape:RoundedRectangleBorder ( side: const BorderSide(color:Colors.grey),borderRadius: BorderRadius.circular(50)),
                                      onPressed: () {},

                                      child:const Icon(Icons.remove,size: 40,color: Colors.grey,)),
                                  const SizedBox(width: 15,),
                                  const Text("2",style: TextStyle(fontSize: 15),),
                                  const  SizedBox(width: 10,),
                                  MaterialButton(
                                      height: 30,
                                      minWidth: 1,
                                      shape:RoundedRectangleBorder ( side:const BorderSide(color:Colors.grey),borderRadius: BorderRadius.circular(50)),
                                      onPressed: () {},

                                      child:const Icon(Icons.add,size: 40,color: Colors.green,)),
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                        child:Column(
                          children: [
                            IconButton(
                                onPressed: (){} ,
                                icon:const Icon( Icons.close,)),
                            const SizedBox(height: 50,),
                            const Text("3.00\$",),
                          ],
                        ), ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Image.asset("assets/images/3.jpg")),
                      Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              const ListTile(
                                title: Text("Egg Chicken Red",
                                  style: TextStyle( fontSize: 15 ,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,),),
                                subtitle: Text("1.Kg,Price"),

                              ),
                              Row(
                                children: [
                                  MaterialButton(
                                      height: 30,
                                      minWidth: 1,
                                      shape:RoundedRectangleBorder ( side:const BorderSide(color:Colors.grey),borderRadius: BorderRadius.circular(50)),
                                      onPressed: () {},

                                      child:const Icon(Icons.remove,size: 40,color: Colors.grey,)),
                                  const SizedBox(width: 15,),
                                  const Text("2",style: TextStyle(fontSize: 15),),
                                  const SizedBox(width: 10,),
                                  MaterialButton(
                                      height: 30,
                                      minWidth: 1,
                                      shape:RoundedRectangleBorder ( side:const BorderSide(color:Colors.grey),borderRadius: BorderRadius.circular(50)),
                                      onPressed: () {},

                                      child:const Icon(Icons.add,size: 40,color: Colors.green,)),
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                        child:Column(
                          children: [
                            IconButton(
                                onPressed: (){} ,
                                icon:const Icon( Icons.close,)),
                            const SizedBox(height: 50,),
                            const Text("1.99\$",),
                          ],
                        ), ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Image.asset("assets/images/2.jpg")),
                      Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              const ListTile(
                                title: Text("Bell Pepper Red",
                                  style: TextStyle( fontSize: 15 ,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,),),
                                subtitle: Text("1.Kg,Price"),

                              ),
                              Row(
                                children: [
                                  MaterialButton(
                                      height: 30,
                                      minWidth: 1,
                                      shape:RoundedRectangleBorder ( side:const BorderSide(color:Colors.grey),borderRadius: BorderRadius.circular(50)),
                                      onPressed: () {},

                                      child:const Icon(Icons.remove,size: 40,color: Colors.grey,)),
                                  const SizedBox(width: 15,),
                                  const Text("2",style: TextStyle(fontSize: 15),),
                                  const SizedBox(width: 10,),
                                  MaterialButton(
                                      height: 30,
                                      minWidth: 1,
                                      shape:RoundedRectangleBorder ( side:const BorderSide(color:Colors.grey),borderRadius: BorderRadius.circular(50)),
                                      onPressed: () {},

                                      child:const Icon(Icons.add,size: 40,color: Colors.green,)),
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                        child:Column(
                          children: [
                            IconButton(
                                onPressed: (){} ,
                                icon:const Icon( Icons.close,)),
                            const SizedBox(height: 50,),
                            const Text("450\$",),
                          ],
                        ), ),
                    ],
                  ),
                ),
                const SizedBox(
                  height:250,),
                Container(
                  width:double.infinity,
                  margin: const EdgeInsets.only(top: 5),
                  child: MaterialButton(
                    minWidth: 100,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    onPressed: (){

                    } ,
                    color: Colors.green,
                    textColor: Colors.white,
                    child:const Text("Go to Checkout", style: TextStyle(fontSize:20 ),),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
