import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class ForgetPasswordTextLink extends StatelessWidget {
  final String text;
  final String link;
  final Function press;
  const ForgetPasswordTextLink({
    Key key,
    this.text,
    this.link,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            link,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 40,)
      ],
    );
  }
}
