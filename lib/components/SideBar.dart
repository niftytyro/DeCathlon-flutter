import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigating_drawer/navigating_drawer.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigatingDrawer(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          ProfileSection(),
          DrawerListTile(
            title: "Bikes",
            subtitle: "Shop Now",
            nextDrawerPage: Container(),
          ),
          DrawerListTile(
            title: "Shop All Sports",
            subtitle: "Cycling, Exercise...",
            nextDrawerPage: Container(),
          ),
          SizedBox(height: 5.0),
          DrawerListTile(
            title: "Shop All Sports",
            subtitle: "Cycling, Exercise...",
            nextDrawerPage: Container(),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    this.subtitle,
    this.title,
    this.nextDrawerPage,
    this.nextAppPage,
  }) : super(key: key);

  final TextStyle _titleStyle = const TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w700,
    color: Color(0xFF343434),
  );
  final TextStyle _subtitleStyle = const TextStyle(
    fontSize: 12.0,
    color: Color(0xFF343434),
  );
  final EdgeInsets _tilePadding =
      const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0);
  final String title;
  final String subtitle;
  final Widget nextDrawerPage;
  final Widget nextAppPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: NavigatingDrawerListItem(
        contentPadding: _tilePadding,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: _titleStyle),
            Text(subtitle, style: _subtitleStyle),
          ],
        ),
        trailing: Icon(FontAwesomeIcons.chevronRight),
        pushPage: nextDrawerPage,
        onTap: () {
          if (nextAppPage != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => nextAppPage,
              ),
            );
          }
        },
      ),
    );
  }
}

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
