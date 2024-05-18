import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_tuqa_baker/shared/styles/constant.dart';

class OrderAcceptedScreen extends StatelessWidget{
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:AppBar(backgroundColor:Colors.white,),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0,right:20, left: 20),
              child: SvgPicture.asset("assets/images/successful.svg",semanticsLabel:'Successful',height:200,width:300,),
            ),
            const SizedBox(
              height:50,
            ),
            const Text("Your order has been \n accepted ",
              textAlign:TextAlign.center,
              style:TextStyle(
                  fontFamily:"Poppins-Regular.ttf",
                  fontSize:20,
                  color:Colors.black
              ),),
            const SizedBox(
              height:10,
            ),
            const Text("Your items has been placed and is on \n it's way to being processed ",
              textAlign:TextAlign.center,
              style:TextStyle(
                  fontFamily:"Poppins-Regular.ttf",
                  fontSize:14,
                  color:Colors.grey
              ),),
            const SizedBox(
              height:120,
            ),
            Container(
              height:65,
              width:300,
              decoration:BoxDecoration(
                color:primaryColor,
                borderRadius:BorderRadius.circular(15),
              ),
              child:const Center(
                child: Text("Track Order",
                    textAlign:TextAlign.center,
                    style:TextStyle(
                        fontFamily:"Poppins",
                        fontSize:16,
                        color:Colors.white
                    )),
              ),
            ),
            Container(
              height:70,
              width:300,
              decoration:const BoxDecoration(
                color:Colors.white,
              ),
              child:const Center(
                child: Text("Back to home",
                    textAlign:TextAlign.center,
                    style:TextStyle(
                      fontFamily:"Poppins",
                      fontSize:15,
                      color:Colors.black,

                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

}