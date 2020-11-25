import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/ForgetPassword/forget_password.dart';
import 'package:flutter_auth/Screens/Intro/intro_screen.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/forget_password_text_link.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.3),
            Text(
              "WELCOME TO",

              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Dog",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold,
                      fontSize: 50
                  ),
                ),
                Text(
                  "Luv",
                  style: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 50
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
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
            SizedBox(
              height: 20,
            ),
            ForgetPasswordTextLink(

              text: '',
              link: 'Forget Password?',
              press: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgetPassword();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              text: "SIGN IN",
              color: Colors.blueAccent,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return IntroScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
