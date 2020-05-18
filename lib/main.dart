import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vfxlogistics/LogIn.dart';
import 'package:vfxlogistics/OnBoarding.dart';


int onBoardCount;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  onBoardCount = pref.getInt("Initial");
  await pref.setInt("Initial", 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              headline1: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                  color: Colors.black54),
              headline2: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans'),
              headline3: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
              headline4: TextStyle(fontSize: 14,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,),
              subtitle1: TextStyle(fontSize: 22,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
              subtitle2: TextStyle(fontSize: 14,
                  fontFamily: 'Montserrat',
                  color: Color(0xffB2B2B2)),
              bodyText1: TextStyle(fontSize: 12, fontFamily: 'OpenSans'),
              bodyText2: TextStyle(fontSize: 12,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold)
          ),
      ),
        initialRoute: onBoardCount == 0 || onBoardCount == null
            ? 'onBoarding'
            : 'LogIn',
        routes: { "onBoarding": (context) => OnBoarding(),
          "LogIn": (context) => LogIn()}
    );
  }
}
