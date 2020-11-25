import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final String label;
  final ValueChanged<String> onChanged;
  RoundedInputField({
    Key key,
    this.hintText,
    this.label,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      label: label,
      child: Column(
        children: <Widget>[

          TextField(
            style: TextStyle(
                color: Colors.white
            ),
            onChanged: onChanged,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(

              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300
              ),
              border: InputBorder.none,
            ),
          ),
        ],
      )
    );
  }
}
