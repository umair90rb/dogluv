import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/CreateDogProfile/create_dog_profile.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/SelectService/select_services_screen.dart';
import 'package:flutter_auth/Screens/CreateDogProfileData/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_dropdown_field.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/components/rounded_textarea_field.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _localization;
  String _age;
  String _breed;
  String _sex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 2,
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
                SizedBox(width: 2,),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Create Dog Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white
              ),
            ),
            SizedBox(height: size.height * 0.002),            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              label: 'Dog\'s Name',
              hintText: "Enter Dog's Name",
              onChanged: (value) {},
            ),
            RoundedDropdownField(
              label: 'Age',
              value : _age,
              options: ['12', '14', '16'],
              hint: 'Select Age',
              onChanged: (value) {
                setState(() {
                  _age = value;
                });
              },
            ),
            RoundedDropdownField(
              label: 'Sex',
              value : _sex,
              options: ['Male', 'Female'],
              hint: 'Select Sex',
              onChanged: (value) {
                setState(() {
                  _sex = value;
                });
              },
            ),
            RoundedDropdownField(
              label: 'Breed',
              value : _age,
              options: ['a', 'b', 'c'],
              hint: 'Select Breed',
              onChanged: (value) {
                setState(() {
                  _age = value;
                });
              },
            ),
            RoundedDropdownField(
              label: 'Localization',
              value : _localization,
              options: ['English', 'Arabic', 'English UK'],
              hint: 'Select Language',
              onChanged: (value) {
                setState(() {
                  _localization = value;
                });
              },
            ),
            RoundedTextareaField(
              label: 'Description',
              hintText: "Enter Description",
              onChanged: (value) {},
            ),

            SizedBox(
              height: size.height*0.01,
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
                      return SelectServicesScreen();
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
