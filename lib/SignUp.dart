import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vfxlogistics/LogIn.dart';

import 'CustomDesigns/Button.dart';
import 'CustomDesigns/TextFieldDesign.dart';
import 'Home.dart';

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
  void dispose() {
    fullName.dispose();
    email.dispose();
    phoneNumber.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildDropdownItem(Country country) =>
        Container(
          // width: 90.0,
          child: Row(
            children: <Widget>[
              CountryPickerUtils.getDefaultFlagImage(country),
              SizedBox(
                width: 4.0,
              ),
              Text("+${country.phoneCode}"),
            ],
          ),
        );

    return Scaffold(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 16.0),
              Container(
                width: 200.0,
                height: 140.0,
                padding: EdgeInsets.only(top: 36.0, bottom: 16.0),
                child: Image.asset(
                  "assets/Logo.png",
                ),
              ),
              Text(
                "Create an account",
                style: Theme
                    .of(context)
                    .textTheme
                    .headline2
                    .apply(color: Color(0xFF333333)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFieldDesign(
                fullName,
                TextInputType.text,
                false,
                "Full Name",
                EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
              ),
              TextFieldDesign(
                email,
                TextInputType.text,
                false,
                "Email",
                EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
                padding: EdgeInsets.only(
                  left: 8.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    CountryPickerDropdown(
                      initialValue: 'NG',
                      itemBuilder: _buildDropdownItem,
                      onValuePicked: (Country country) {
                        print("${country.name}");
                      },
                    ),
                    Expanded(
                        child: TextFieldDesign(
                          phoneNumber,
                          TextInputType.text,
                          false,
                          "Phone Number",
                          EdgeInsets.only(
                              top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
                        )),
                  ],
                ),
              ),
              TextFieldDesign(
                password,
                TextInputType.text,
                true,
                "Password",
                EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
              ),
              TextFieldDesign(
                confirmPassword,
                TextInputType.text,
                true,
                "Confirm Password",
                EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
              ),
              SizedBox(
                height: 24.0,
              ),
              Button("CREATE", () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
              SizedBox(
                height: 16.0,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyText2
                          .apply(color: Colors.black),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn())),
                        child: Text(
                          "Sign in",
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyText2
                              .apply(color: Theme
                              .of(context)
                              .primaryColor),
                        )),
                  ]),
            ],
          ),
        ));
  }
}
