import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color color;

  const DefaultButton(
      {super.key, required this.text, this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity-40,
      height: 60,
      margin: const EdgeInsets.only(top: 5,right: 15, left: 15),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: color,
        textColor: Colors.white,
        child: Text(
          text,
          style: TextStyle(fontSize: MediaQuery.of(context).size.height / 50),
        ),
      ),
    );
  }
}