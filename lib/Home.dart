import 'package:flutter/material.dart';

import 'CustomDesigns/TextFieldDesign.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text;
  TextEditingController trackingNum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add_alert),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              flexibleSpace: flexibleSpaceWidget(),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: <Widget>[
                gridItems("SHIPMENT"),
                gridItems("TRACKING"),
                gridItems("MESSAGE"),
                gridItems("SETTING"),
                gridItems("SETTING"),
                gridItems("SETTING"),
              ],
            )
          ],
        ));
  }

  Widget flexibleSpaceWidget() {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 300,
      child: Stack(
        children: <Widget>[
          // Positioned(bottom: 70.0, left: 8.0, height: 30.0, child:
          Container(
            margin: EdgeInsets.only(top: 230.0, right: 8.0),
            height: 45.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  //color: Colors.white,
                  child: TextFieldDesign(
                    trackingNum,
                    TextInputType.text,
                    false,
                    "Tracking Number",
                    EdgeInsets.only(left: 8.0, right: 4.0),
                  ),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0XFFFFE8B2),
                  ),
                  child: Icon(
                    Icons.search,
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 120.0,
            right: 8.0,
            child: Image.asset(
              "assets/BigNet.png",
              height: 64.0,
              width: 100.0,
            ),
          ),
          Positioned(
            bottom: 160.0,
            right: 76.0,
            child: Image.asset(
              "assets/SmallNet.png",
              height: 64.0,
              width: 100.0,
            ),
          ),
          Positioned(
              bottom: 130.0,
              left: 12.0,
              child: RichText(
                text: TextSpan(
                  text: 'Track \n',
                  style: Theme.of(context).textTheme.headline5,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'your',
                        style: Theme.of(context).textTheme.headline6),
                    TextSpan(text: ' Shipment',style: Theme.of(context).textTheme.headline5,),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Container gridItems(String text) {
    return Container(
      height: 250.0,
      width: 200.0,
      margin: EdgeInsets.all(4.0),
      padding: EdgeInsets.only(bottom: 16.0),
      color: Colors.white,
      alignment: Alignment.bottomCenter,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16.0,
            color: Colors.black38,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    trackingNum.dispose();
  }
}
