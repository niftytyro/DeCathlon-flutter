import 'package:flutter/material.dart';

class OnBoardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Free shipping over \$30",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.underline,
            decorationColor: Colors.yellow[700],
            decorationThickness: 2.0,
          ),
        ),
        SizedBox(height: 20.0),
        FlatButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () {},
          child: Text(
            "SIGN IN",
            style: TextStyle(fontSize: 10.0, color: Colors.white),
          ),
          color: Colors.blue[400],
        ),
        FlatButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: () {},
          child: Text(
            'New account',
            style: TextStyle(fontSize: 9.0, color: Colors.blue[400]),
          ),
        ),
      ],
    );
  }
}
