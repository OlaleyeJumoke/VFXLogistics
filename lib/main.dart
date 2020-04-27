import 'package:flutter/material.dart';
import 'package:vfxlogistics/LogIn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
 //static  const color = const Color(0xff1A936F);
 //static  const colorScaffold = const Color(0xffE5E5E5);
 static  const signIn = const Color(0xff114B5F);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff1A936F),
        highlightColor: Colors.white,
        //primarySwatch: Colors.teal,
          scaffoldBackgroundColor: const Color(0xFFE5E5E5),
          textTheme: TextTheme(
              display1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'OpenSans', color: Colors.black54),
              display2: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'OpenSans'),
              display3: TextStyle(fontSize: 16,  fontFamily: 'OpenSans'),
              display4: TextStyle(fontSize: 14,  fontFamily: 'OpenSans', fontWeight: FontWeight.bold,),
              subtitle: TextStyle(fontSize: 22,  fontFamily: 'OpenSans', fontWeight: FontWeight.w300, color: Colors.white),
              body1: TextStyle(fontSize: 14,  fontFamily: 'Montserrat', color: Color(0xffB2B2B2)),
              body2: TextStyle(fontSize: 12,  fontFamily: 'OpenSans'),
              subhead: TextStyle(fontSize: 12,  fontFamily: 'OpenSans',fontWeight: FontWeight.bold)
          ),
      ),
      home: LogIn(),
    );
  }
}
