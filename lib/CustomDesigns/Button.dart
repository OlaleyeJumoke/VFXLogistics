import 'package:flutter/material.dart';

class Button extends StatelessWidget {
 final String text;
 final Function function;
 Button(this.text, this.function);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 8.0, right: 8.0, top: 12.0, bottom: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(color: Colors.black38, blurRadius: 2,
               offset: Offset(0, 2))
        ],
        color: Theme
            .of(context)
            .primaryColor,),
      child: FlatButton(onPressed: function,
        child: Text(text, style: Theme
            .of(context)
            .textTheme
            .display4
            .apply(color: Colors.white),),),
    );
  }
}
