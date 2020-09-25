import 'package:decathlon_clone/components/CartClipper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Color(0x505130),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Image.asset('assets/logo.png', height: kToolbarHeight),
        // centerTitle: true,
        actions: [
          ClipPath(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.05 * MediaQuery.of(context).size.width),
              width: 0.2 * MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFBADC37),
              ),
              alignment: Alignment.centerRight,
              child: Icon(
                FontAwesomeIcons.shoppingCart,
              ),
            ),
            clipper: CartClipper(),
          ),
        ],
      ),
    );
  }
}
