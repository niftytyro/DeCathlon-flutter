import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigating_drawer/navigating_drawer.dart';

class SideBarListTile extends StatelessWidget {
  const SideBarListTile(
      {Key key,
      this.subtitle,
      this.title,
      this.nextDrawerPage,
      this.nextAppPage,
      this.parentContext})
      : super(key: key);

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
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0.5),
      child: NavigatingDrawerListItem(
        backgroundColor: Colors.white,
        contentPadding: _tilePadding,
        leading: subtitle == null
            ? Text(title, style: _titleStyle)
            : Column(
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
            Navigator.of(parentContext != null ? parentContext : context).push(
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
