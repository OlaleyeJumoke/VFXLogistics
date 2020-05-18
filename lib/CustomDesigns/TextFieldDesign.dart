import 'dart:ui';

import 'package:flutter/material.dart';

class TextFieldDesign extends StatelessWidget{
 final TextEditingController controller;
 final TextInputType type;
 final bool obscure;
 final String labelText;
 final EdgeInsets margin;

 TextFieldDesign(this.controller, this.type, this.obscure, this.labelText,
     this.margin);
  
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(  left: 8.0, right: 8.0 ),
      margin: margin,
      //EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0, right: 8.0 ),
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.0)),color: Colors.white,),
        child: TextField(
          cursorColor: Theme.of(context).primaryColor,
          textCapitalization: TextCapitalization.sentences,
          controller: controller,
          keyboardType: type,
          obscureText: obscure,
          style: TextStyle(fontSize: 18.0, color: Colors.black87),
          decoration: InputDecoration(labelText: labelText,
              labelStyle: Theme
                  .of(context)
                  .textTheme
                  .bodyText1,
              contentPadding: EdgeInsets.all(4.0),
              fillColor: Colors.white,
              border: InputBorder.none
             ),
        ),
    );
  }
 }
