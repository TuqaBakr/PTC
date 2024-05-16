//
// import 'package:flutter/material.dart';
//
// class DefaultButton extends StatelessWidget {
//   final String text;
//   final void Function()? onPressed;
//   final Color color;
//   double width= double.infinity;
//
//    DefaultButton({super.key,
//     required this.text,
//     this.onPressed,
//     required this.color,
//
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       margin: const EdgeInsets.only(top: 5),
//       child: MaterialButton(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         padding: const EdgeInsets.symmetric(vertical: 13),
//         onPressed: onPressed ,
//         color: color,
//         textColor: Colors.white,
//         child: Text(text, style: TextStyle(fontSize: MediaQuery.of(context).size.height/50),),
//       ),
//     );
//   }
// }