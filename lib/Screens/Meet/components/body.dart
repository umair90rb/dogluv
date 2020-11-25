import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/DogProfile/dog_profile_screen.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Meet/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future dogsList;
  @override
  void initState() {
    dogsList = getDogsList();
    super.initState();
  }

  getDogsList () async {
    return [
      {
        "thumbnail":'dog.jpg',
        "name":'Yammii',
        "totalImages":304
      },
      {
        "thumbnail":'dog.jpg',
        "name":'Yammii',
        "totalImages":304
      }
    ];
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
                IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){
                  Navigator.pop(context);
                }),
                Text(
                  "Photos",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                IconButton(icon: Icon(Icons.close, color: Colors.white,), onPressed: (){
                  Navigator.pop(context);
                }),
              ],
            ),
            FutureBuilder(
                future: dogsList,
                builder: (context, snapshot){
                  if(snapshot.hasData){
                    print(snapshot.data);
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index){

                        return InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DogProfileScreen();
                                },
                              ),
                            );

                          },
                          child: Container(

                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey)
                              )
                            ),
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 15,),
                                Container(
                                  width: 80,
                                  height: 100,
                                  child: Image.asset('assets/images/${snapshot.data[index]['thumbnail']}'),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(snapshot.data[index]['name'], style: TextStyle(color: Colors.white),),
                                    SizedBox(height: 5,),
                                    Text(snapshot.data[index]['totalImages'].toString(), style: TextStyle(color: Colors.yellowAccent),),
                                  ],
                                ),
                                SizedBox(width: size.width*0.45,),
                                Icon(Icons.keyboard_arrow_right, color: Colors.yellowAccent,)
                              ],
                            ),
                          ),
                        );
                      }
                    );
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
