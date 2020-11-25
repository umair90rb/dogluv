import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/CreateDogProfileData/create_profile_data.dart';
import 'package:flutter_auth/Screens/ForgetPassword/forget_password.dart';
import 'package:flutter_auth/Screens/Intro/intro_screen.dart';
import 'package:flutter_auth/Screens/CreateDogProfile/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/forget_password_text_link.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

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
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Let's create your profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white
              ),
            ),
            SizedBox(height: size.height * 0.05),
            InkWell(
              onTap: (){
                showCupertinoModalPopup(
                    context: context,
                    builder: (context){
                      return CupertinoActionSheet(

                        cancelButton: CupertinoActionSheetAction(onPressed: (){Navigator.of(context).pop();}, child: Text('Cancel')),
                        actions: <Widget>[
                          CupertinoActionSheetAction(onPressed: (){}, child: Text('Take Photo')),
                          CupertinoActionSheetAction(onPressed: (){}, child: Text('Choose From Library')),
                        ],
                      );
                    }
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/dog.jpg')
                        ),
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    child: Icon(Icons.add),
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    child: Icon(Icons.add),
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.35),

            RoundedButton(
              text: "CONTINUE",
              color: Colors.white,
              textColor: Colors.blueAccent,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CreateDogProfileData();
                    },
                  ),
                );
              },
            ),
            SizedBox(width: 5,),

            RoundedButton(

              text: "SKIP",
              color: Colors.white,
              textColor: Colors.blueAccent,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CreateDogProfileData();
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
