import 'package:flutter/material.dart';

import 'package:test_app/cards.dart';


List<Widget> icons = [
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  HorzCard(Icon(Icons.qr_code)),
  
];

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 80.0,
        shape: const RoundedRectangleBorder(side: BorderSide(style: BorderStyle.solid, color: Colors.black12)),
        title: const Text("Test App"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 30.0,
          color: Colors.black,
          fontFamily: "Roboto",
          fontWeight: FontWeight.bold,
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30.0,),
          const SizedBox(height: 16.0,),
          _isVisible? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(16.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HorzCard(const Icon(Icons.dashboard)),
              HorzCard(const Icon(Icons.fact_check)),
              HorzCard(const Icon(Icons.gamepad)),
              ...icons,
            ],
          ),
          ): Center(
              child:Container(
            padding: EdgeInsets.all(16.0),
            child: Text("Please Press the floating button to get the cards"),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0),boxShadow: [BoxShadow(
              color: Colors.black45.withOpacity(0.7),offset: Offset(0,3),spreadRadius: 0.01, blurRadius: 10.0
            )], color: Colors.white,),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton( onPressed: (){setState(() {
        _isVisible = !_isVisible;
      });},child: Icon(Icons.accessibility)),
    );
  }
}
