import 'package:decathlon_clone/screens/catalog/Catalog.dart';
import 'package:flutter/material.dart';
import 'package:navigating_drawer/navigating_drawer.dart';

import 'SideBarListTile.dart';
import 'SideBarProfileSection.dart';

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
          SideBarListTile(
            title: "Bikes",
            subtitle: "Shop Now",
            nextAppPage: Catalog(),
            parentContext: context,
          ),
          SideBarListTile(
            title: "Shop All Sports",
            subtitle: "Cycling, Exercise...",
            nextAppPage: Catalog(),
            parentContext: context,
          ),
          SizedBox(height: 5.0),
          SideBarListTile(
            title: "Bike",
            subtitle: "Bikes, Bike Helmets...",
            nextDrawerPage: BikesPage(parentContext: context),
          ),
          SideBarListTile(
            title: "Hike & Camp",
            subtitle: "Hiking Backpacks, Tents...",
            nextDrawerPage: NavigatingDrawerPage(
              body: Container(),
            ),
          ),
          SideBarListTile(
            title: "Exercise",
            subtitle: "Fitness, Yoga & Studio...",
            nextDrawerPage: NavigatingDrawerPage(
              body: Container(),
            ),
          ),
          SideBarListTile(
            title: "Water",
            subtitle: "Stand Up Paddle, Kayaking...",
            nextDrawerPage: NavigatingDrawerPage(
              body: Container(),
            ),
          ),
          SizedBox(height: 5.0),
          SideBarListTile(
            title: "Women",
            subtitle: "Women's Jackets, Women's Tops...",
            nextDrawerPage: NavigatingDrawerPage(
              body: Container(),
            ),
          ),
          SideBarListTile(
            title: "Men",
            subtitle: "Men's Jackets, Men's Tops...",
            nextDrawerPage: NavigatingDrawerPage(
              body: Container(),
            ),
          ),
          SideBarListTile(
            title: "Kids",
            subtitle: "Kid's Tops, Kid's Bottoms...",
            nextDrawerPage: NavigatingDrawerPage(
              body: Container(),
            ),
          ),
          SizedBox(height: 5.0),
          SideBarListTile(
            title: "Sale",
            subtitle: "All Sale, Men Sale...",
            nextDrawerPage: NavigatingDrawerPage(
              body: Container(),
            ),
          ),
          SizedBox(height: 5.0),
          SideBarListTile(
            title: "A to Z Sports",
            nextAppPage: Catalog(),
            parentContext: context,
          ),
        ],
      ),
    );
  }
}

class BikesPage extends StatelessWidget {
  BikesPage({@required this.parentContext});

  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return NavigatingDrawerPage(
      body: ListView(
        children: [
          SideBarListTile(
            title: "Bikes",
            subtitle: "Road Bikes, Folding Bikes...",
            nextAppPage: Catalog(),
            parentContext: parentContext,
          ),
          SideBarListTile(
            title: "Bike Helmets",
            nextAppPage: Catalog(),
            parentContext: parentContext,
          ),
          SideBarListTile(
            title: "Bike Clothing",
            subtitle: "Jerseys, Jackets...",
            nextAppPage: Catalog(),
            parentContext: parentContext,
          ),
          SideBarListTile(
            title: "Bike Shoes",
            subtitle: "Shoes, Socks...",
            nextAppPage: Catalog(),
            parentContext: parentContext,
          ),
          SideBarListTile(
            title: "Bike Accessories",
            subtitle: "Locks, Lights...",
            nextAppPage: Catalog(),
            parentContext: parentContext,
          ),
          SideBarListTile(
            title: "Bike Maintenance",
            subtitle: "Tires, Tubes...",
            nextAppPage: Catalog(),
            parentContext: parentContext,
          ),
        ],
      ),
    );
  }
}
