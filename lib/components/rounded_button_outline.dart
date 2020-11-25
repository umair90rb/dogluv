import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class RoundedButtonOutline extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final bool border;
  const RoundedButtonOutline({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.border = false,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var bdr;
    if(border){
      bdr = BoxDecoration(
        border: Border.all(color: textColor)
      );
    } else {
      bdr = BoxDecoration();
    }
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(

        borderRadius: BorderRadius.circular(29),
        child: OutlineButton(

          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
