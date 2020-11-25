import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/ForgetPassword/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/forget_password_text_link.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){
                  Navigator.pop(context);
                }),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                SizedBox(width: 30,)
              ],
            ),

            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              label: 'Email',
              hintText: "Enter Email",
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height*0.5,
            ),
            RoundedButton(
              text: "SEND LINK",
              color: Colors.blueAccent,
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),

          ],
        ),
      ),
    );
  }
}
