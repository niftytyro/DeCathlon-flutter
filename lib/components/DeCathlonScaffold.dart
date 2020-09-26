import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CartClipper.dart';

class DeCathlonScaffold extends StatelessWidget {
  DeCathlonScaffold({this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Image.asset('assets/logo.png', height: kToolbarHeight),
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                contentPadding: EdgeInsets.all(5.0),
                hintText: "Search 10k products, 80 sports",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
                suffixIcon: Icon(FontAwesomeIcons.search),
              ),
            ),
          ),
          body,
        ],
      ),
    );
  }
}
