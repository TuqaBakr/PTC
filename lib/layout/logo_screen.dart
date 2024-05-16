
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/styles/constant.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body:Padding(
        padding: const EdgeInsets.fromLTRB(75, 300, 0, 5),
        child: SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                children: [
                  SvgPicture.asset(
                  'assets/images/logo.svg',
                  semanticsLabel: 'Acme Logo'
                ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "nector",
                        style: TextStyle(
                            fontSize:33,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),
                      ),
                      Text("online groceries",
                        style: TextStyle(
                            fontSize:14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),)
                    ],
                  )
                ],
              ),
            ),

        ),
      ),

    );
  }
}
