import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/CreateProfile/create_profile.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}
class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  Function goToTab;

  double headingSize = 30;
  double descriptionSize = 22;


  @override
  void initState() {


    slides.add(
      new Slide(
        backgroundColor: Colors.deepPurple,
        title: "I'm looking for a friend for my dog",
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: headingSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "Dogluv allows you to find lots of new friends in the area for your furry friend!",
        styleDescription: TextStyle(
            color: Colors.grey,
            fontSize: descriptionSize,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/intro/1.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Colors.teal,
        title: "I have a dog for sale / I want to buy or adopt a dog",
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: headingSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "Dogluv allows you to find loving families for your puppies, or to buy a new companion that will fill your home with joy.",
        styleDescription: TextStyle(
            color: Colors.grey,
            fontSize: descriptionSize,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/intro/2.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Colors.amber,
        title: "I want to share news and photos",
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: headingSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "With Dogluv, you can share pictures of your companion and news about them on our wall. You’ll also get to see the reactions of other users.",
        styleDescription: TextStyle(
            color: Colors.grey,
            fontSize: descriptionSize,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/intro/3.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundColor: Colors.blueAccent,
        title: " I want to search services and discount coupons for my dog",
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: headingSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
        "Dogluv allows you to find numerous services and stores for your companion nearby or online. Discount coupons for your dog may be available.",
        styleDescription: TextStyle(
            color: Colors.grey,
            fontSize: descriptionSize,
            fontStyle: FontStyle.italic,
            fontFamily: 'Raleway'),
        pathImage: "assets/intro/4.png",
      ),
    );
    super.initState();
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return CreateProfile();
        },
      ),
    );
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }


  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        color: currentSlide.backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 0.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Image.asset(
                    currentSlide.pathImage,
                    width: currentSlide.widthImage,
                    height: currentSlide.heightImage,
                    fit: BoxFit.contain,
                  )),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {

    return new IntroSlider(
      // List slides
      slides: this.slides,
      isShowNextBtn: false,
      isShowPrevBtn: false,
      isShowSkipBtn: false,

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33ffcc5c),
      highlightColorDoneBtn: Color(0xffffcc5c),

      // Dot indicator
      colorDot: Color(0xffffcc5c),
      sizeDot: 13.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}

