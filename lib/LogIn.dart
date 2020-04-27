import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vfxlogistics/Designs/TextFieldDesign.dart';
import 'package:vfxlogistics/SignUp.dart';

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
            Image.asset("assets/Logo.png",width: 120.0, height: 100.0,),
            Container(width: 230.0, height: 230.0, alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    Container(

                      child: Image.asset(
                        "assets/LogIn.png", fit: BoxFit.cover,),),
                    Positioned(child: Text("VXF LOGISTICS", style: Theme
                        .of(context)
                        .textTheme
                        .subtitle,textAlign: TextAlign.center,),
                      height: 32.0, left: 8.0,right: 8.0,
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0)),
                color: const Color(0xfffFAFAFA),),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Welcome Back",
                    style: Theme
                        .of(context)
                        .textTheme
                        .display2
                        .apply(color: Color(0xff191919)),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 12.0),
                  TextFieldDesign(username, TextInputType.text, true,
                      "Username or Phone Number"),
                  TextFieldDesign(
                      password, TextInputType.text, true, "Password"),

                  Container(
                    margin: EdgeInsets.only(bottom: 4.0, left: 8.0, right: 8.0),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Text("Forget password?",
                            style: Theme
                                .of(context)
                                .textTheme
                                .subhead
                                .apply(color: Colors.black,),)),
                          GestureDetector(onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignUp()));
                          },
                            child: Text("Sign Up", style: Theme
                                .of(context)
                                .textTheme
                                .subhead
                                .apply(color: Theme
                                .of(context)
                                .primaryColor),),
                          ),
                        ]),
                  ),
                  SizedBox(height: 24.0,),
                  Container(
                    margin: EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 12.0, bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      boxShadow: [
                        BoxShadow(color: Colors.black45, blurRadius: 4,
                            spreadRadius: 2.0, offset: Offset(0, 1))
                      ],
                      color: Theme
                          .of(context)
                          .primaryColor,),
                    child: FlatButton(onPressed: null,
                      child: Text("CREATE", style: Theme
                          .of(context)
                          .textTheme
                          .display4
                          .apply(color: Colors.white),),),
                  ),
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
