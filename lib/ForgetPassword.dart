import "package:flutter/material.dart";
import 'package:vfxlogistics/CustomDesigns/TextFieldDesign.dart';

import 'CustomDesigns/Button.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController value = TextEditingController();


  @override
  void dispose(){
    super.dispose();
    value.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset("assets/Logo.png", height: 80, width: 120,),
          Container( margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 36.0),
            child: Text("Forgot Password? We got ya!",
              style: Theme
                  .of(context)
                  .textTheme
                  .headline2
                  .apply(color: const Color(0xff191919)),
              textAlign: TextAlign.start,),
          ),
          Container( margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 12.0, bottom: 36.0),
            child: Text("Please, enter your registered phone number or email to reset your password.",
              style: TextStyle(fontSize: 14, fontFamily: 'OpenSans', color: Color(0xFF4D4D4D)),
            ),
          ),
          TextFieldDesign(value, TextInputType.numberWithOptions(), false,
            "Phone Number or Email",
            EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),),
          Button("RESET", null)
        ],
      ),
    );
  }
}
