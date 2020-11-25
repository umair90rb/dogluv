import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';


class RoundedDropdownField extends StatelessWidget {
  final String hint;
  final String value;
  final String label;
  final ValueChanged<String> onChanged;
  final List<String> options; // always pass a list of options like ['abc', 'cde', 'fgh']
  RoundedDropdownField({
    Key key,
    @required this.hint,
    @required this.value,
    this.label,
    @required this.onChanged,
    @required this.options
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      label: label,
      child: Row(
        children: <Widget>[

          DropdownButton<String>(
            value: value,
            hint: Text(
              hint,
              style: TextStyle(
                color: Colors.white
              ),
            ),
            icon: Container(),
            style: TextStyle(
                color: Colors.white
            ),
            underline: Container(),
            onChanged: onChanged,
            items: options
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(

                value: value,
                child: Text(
                    value,
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              );
            })
                .toList(),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
