import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      height: 80.0,
      color: Colors.blue,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.user,
            color: Colors.white,
            size: 18.0,
          ),
          SizedBox(width: 10.0),
          Text(
            "Welcome",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          Spacer(),
          FlatButton(
            onPressed: () {},
            shape: BeveledRectangleBorder(
              side: BorderSide(
                color: Colors.white,
                width: 0.75,
              ),
            ),
            child: Text(
              "SIGN IN",
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}
