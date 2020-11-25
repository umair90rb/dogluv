import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_dropdown_field.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/components/text_field_container.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _value;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){
                  Navigator.pop(context);
                }),
                Text(
                  "REGISTER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                SizedBox(width: 1,)
              ],
            ),
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              label: 'Email',
              hintText: "Enter Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              label: 'Password',
              hintText: 'Enter Password',
              onChanged: (value) {},
            ),
            TextFieldContainer(
              label: 'Password Strength',
            ),
            RoundedPasswordField(
              label: 'Confirm Password',
              hintText: 'Confirm Password',
              onChanged: (value) {},
            ),
            RoundedDropdownField(
              label: 'Language Preferences',
              value: _value,
              options: ['English USA', 'English UK'],
              hint: "Select Language",
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            // RoundedDropdownField(
            //   hintText: 'Select language',
            //   icon: Icons.language,
            //   options: ['English UK', 'English US'],
            // ),

            RoundedButton(
              text: "REGISTER",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            // OrDivider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     SocalIcon(
            //       iconSrc: "assets/icons/facebook.svg",
            //       press: () {},
            //     ),
            //     SocalIcon(
            //       iconSrc: "assets/icons/twitter.svg",
            //       press: () {},
            //     ),
            //     SocalIcon(
            //       iconSrc: "assets/icons/google-plus.svg",
            //       press: () {},
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
