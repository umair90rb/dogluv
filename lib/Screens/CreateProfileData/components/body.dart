import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/CreateDogProfile/create_dog_profile.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/CreateProfileData/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_dropdown_field.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 2,),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 2,),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 2,),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Create Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white
              ),
            ),
            SizedBox(height: size.height * 0.05),            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              label: 'Name',
              hintText: "Enter Name",
              onChanged: (value) {},
            ),
            RoundedDropdownField(
              label: 'Age',
              value : _value,
              options: ['12', '14', '16'],
              hint: 'Select Age',
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            RoundedDropdownField(
              label: 'Localization',
              value : _value,
              options: ['English', 'Arabic', 'English UK'],
              hint: 'Select Language',
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),


            SizedBox(
              height: size.height*0.2,
            ),
            RoundedButton(
              textColor: Colors.blueAccent,
              color: Colors.white,
              text: "CONTINUE",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CreateDogProfile();
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
