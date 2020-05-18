import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vfxlogistics/ForgetPassword.dart';
import 'package:vfxlogistics/SignUp.dart';

import 'CustomDesigns/Button.dart';
import 'CustomDesigns/TextFieldDesign.dart';
import 'Home.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  void dispose() {
    password.dispose();
    username.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 28.0),
            Image.asset(
              "assets/Logo.png",
              width: 120.0,
              height: 100.0,
            ),
            Container(
                width: 230.0,
                height: 230.0,
                alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        "assets/LogIn.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Text(
                        "VXF LOGISTICS",
                        style: Theme
                            .of(context)
                            .textTheme
                            .subtitle1,
                        textAlign: TextAlign.center,
                      ),
                      height: 32.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                  ],
                )),

            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0)),
                color: const Color(0xfffFAFAFA),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Welcome Back",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline2
                        .apply(color: const Color(0xff191919)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12.0),
                  TextFieldDesign(
                    username,
                    TextInputType.text,
                    false,
                    "Username or Phone Number",
                    EdgeInsets.only(
                        top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
                  ),
                  TextFieldDesign(
                    password,
                    TextInputType.text,
                    true,
                    "Password",
                    EdgeInsets.only(
                        top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 4.0, left: 8.0, right: 8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgetPassword()));
                                },
                                child: Text(
                                  "Forget password?",
                                  style:
                                  Theme
                                      .of(context)
                                      .textTheme
                                      .bodyText2
                                      .apply(
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              "Sign Up",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyText2
                                  .apply(color: Theme
                                  .of(context)
                                  .primaryColor),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Button("SIGN IN", () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }),
                ],
              ),
            ),
            //)
          ],
        ),
      ),
    );
  }
}
