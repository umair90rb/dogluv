import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/DogProfile/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future dogProfile;
  @override
  void initState() {
    dogProfile = getDogProfile();
    super.initState();
  }

  getDogProfile () async {
    return {
        "thumbnail":'dog.jpg',
        "name":'Yammii',
        "totalImages":304
      };
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Expanded(
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black87)
                    ),
                    child: CustomRadioButton(
                      unSelectedBorderColor: Colors.white,
                      spacing: 0.0,
                      defaultSelected: 'MEET',
                      enableShape: true,
                      
                      enableButtonWrap: true,
                      unSelectedColor: Theme.of(context).canvasColor,
                      buttonLables: [
                        'Meet',
                        'Buy',
                      ],
                      buttonValues: [
                        "MEET",
                        "BUY",
                      ],
                      buttonTextStyle: ButtonTextStyle(
                          selectedColor: Colors.white,
                          unSelectedColor: Colors.black,
                          textStyle: TextStyle(fontSize: 14)),
                      radioButtonValue: (value) {
                        print(value);
                      },
                      selectedColor: Theme.of(context).accentColor,
                    ),
                  ),
                ),
                // IconButton(icon: Icon(Icons.more_vert, color: Colors.white,), onPressed: (){
                //   Navigator.pop(context);
                // }),
              ],
            ),
            FutureBuilder(
                future: dogProfile,
                builder: (context, snapshot){
                  if(snapshot.hasData){
                    print(snapshot.data);
                    return Text(snapshot.data.toString());
                  } else if(snapshot.hasError){
                      return Text(snapshot.error);
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
            ),
          ],
        )
      ),
    );
  }
}
