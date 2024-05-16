import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../shared/styles/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('assets/images/img.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 320,),
                  SvgPicture.asset(
                    'assets/images/logo.svg',
                    semanticsLabel: 'Acme Logo'
                                    ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal:40
                    ),
                    child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Welcome\n',
                                    style: TextStyle(
                                      fontSize: 52,
                                      fontWeight: FontWeight.w400,
                                    )
                                ),
                                TextSpan(
                                    text: 'to our store',
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w400,
                                    )
                                ),
                                TextSpan(
                                    text:'\nGer your groceries in as fast as one hour',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100
                                    )
                                )
                              ]
                          ),
                        )
                    ),
                  ),
                  const SizedBox(height: 50,),
                  SizedBox(
                    width:200,
                    height: 50,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      //padding: const EdgeInsets.symmetric(vertical: 20),
                      onPressed: (){},
                      color: primaryColor,
                      textColor: Colors.white,
                      child:const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )


            ],
          ))
        ],

      ),
    );
  }
}
