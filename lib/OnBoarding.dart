import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:vfxlogistics/SignUp.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  List<Slide> slides = new List();

  Function goToTab;
  @override
  void initState(){
    super.initState();

    slides.add(
      new Slide(
        title: "Logistics",
        styleTitle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'OpenSans', color: Colors.black54),
        description: "vfx logistics brings you close \n to your customers and handles all logistics",
        styleDescription: TextStyle(fontSize: 16,  fontFamily: 'OpenSans', color: Color(0xFF666666)),
        pathImage: "assets/onBoarding/Onboarding1.png",
      ),
    );
    slides.add(
      new Slide(
          title: "Warehouse",
          styleTitle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'OpenSans', color: Colors.black54),
          description: "vfx logistics brings you close \n to your customers and handles all logistics",
          styleDescription: TextStyle(fontSize: 16,  fontFamily: 'OpenSans', color: Color(0xFF666666)),
          pathImage: "assets/onBoarding/Onboarding2.png",)
    );
    slides.add(
      new Slide(
          title: "Delivery",
          styleTitle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'OpenSans', color: Colors.black54),
          description: "vfx logistics brings you close \n to your customers and handles all logistics",
          styleDescription: TextStyle(fontSize: 16,  fontFamily: 'OpenSans', color: Color(0xFF666666)),
          pathImage: "assets/onBoarding/Onboarding3.png",)
    );
  }

  Widget signInAndSignUpButtons(){
    return Column(
      children: <Widget>[
        SizedBox(height: 8.0,),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 8.0, right: 8.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.0)),
            color: Theme.of(context).primaryColor,),
          child: FlatButton(onPressed: null,
            child: Text("LOGIN", style: Theme.of(context).textTheme.display4.apply(color: Colors.white),),),
        ),
        SizedBox(height: 4.0,),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 8.0, right: 8.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.0)),
            color: Theme.of(context).highlightColor,),
          child: FlatButton(onPressed: ( ){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignUp()));
          },
            child: Text("SIGN UP", style: Theme.of(context).textTheme.display4
                .apply(color: const Color(0xff114B5F)),),),
        ),
        SizedBox(height: 4.0,),
      ],
    );
  }

  List<Widget> renderSlideTabs(){
    List<Widget> tabs = new List();
    for(int i = 0; i < slides.length; i++){
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 60, top: 30),
            child: Column(
              children: <Widget>[
                Container(
                    child: Text(currentSlide.title,
                      style: currentSlide.styleTitle,
                      textAlign: TextAlign.center,)
                ),
                Container(
                  child: Image.asset(currentSlide.pathImage,
                      width: 300.0, height: 300.0, fit:BoxFit.cover),
                ),
                Container(
                  child: Text(
                    currentSlide.description,
                    style: currentSlide.styleDescription,
                    textAlign: TextAlign.center,)
                )
              ],
            ),
          ),
        )
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: IntroSlider(slides: this.slides,
                    listCustomTabs: this.renderSlideTabs(),
                    backgroundColorAllSlides: Colors.white,
                    refFuncGoToTab: (refFunc) {
                      this.goToTab = refFunc;
                    },
                    colorDot: Theme.of(context).primaryColor,
                    sizeDot: 8.0,
                    shouldHideStatusBar: true,
                    colorActiveDot: Theme.of(context).highlightColor,
                    typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
                  ),
            ),
            signInAndSignUpButtons(),
          ],
        ),
    );
         // signInAndSignUpButtons(),
        //],

     // );
  }
}
