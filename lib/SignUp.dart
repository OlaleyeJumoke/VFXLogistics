import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vfxlogistics/Designs/TextFieldDesign.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();


  @override
  void dispose(){
    fullName.dispose();
    email.dispose();
    phoneNumber.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(child:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 16.0),
          Container(width: 200.0, height: 140.0,
            padding: EdgeInsets.only(top: 36.0, bottom: 16.0),
            child: Image.asset("assets/Logo.png",),),
          Text("Create an account", style:Theme.of(context).textTheme.display2.apply(color: Color(0xFF333333)), textAlign: TextAlign.center,),
          SizedBox(height: 16.0,),
          TextFieldDesign(fullName,TextInputType.text,false,"Full Name"),
          TextFieldDesign(email,TextInputType.text,false,"Email"),
          TextFieldDesign(phoneNumber,TextInputType.text,false,"Phone Number"),
          TextFieldDesign(password,TextInputType.text,true,"Password"),
          TextFieldDesign(confirmPassword,TextInputType.text,true,"Confirm Password"),
          SizedBox(height: 24.0,),
          Container(
            margin: EdgeInsets.only(left: 8.0, right: 8.0),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Theme.of(context).primaryColor,),
            child: FlatButton(onPressed: null,
                  child: Text("CREATE", style: Theme.of(context).textTheme.display4.apply(color: Colors.white),),),
          ),
          SizedBox(height: 16.0,),
          Row(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: Theme.of(context).textTheme.body2.apply(color: Colors.black),),
                SizedBox(width: 4.0,),
                Text("Sign in", style: Theme.of(context).textTheme.body2.apply(color: Theme.of(context).primaryColor),),

              ])

        ],
      ),
    ));
  }
}

