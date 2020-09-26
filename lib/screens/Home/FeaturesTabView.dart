import 'package:flutter/material.dart';

class FeaturesTabView extends StatelessWidget {
  const FeaturesTabView({
    Key key,
  }) : super(key: key);

  final TextStyle kDescriptionStyle = const TextStyle(
    color: Colors.white,
    fontSize: 8.0,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(height: 60.0),
            color: Colors.blue[400],
            child: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Image.asset("assets/icons/FREE_SHIPPING.webp")),
                Tab(icon: Image.asset("assets/icons/FREE_PICKUP.webp")),
                Tab(icon: Image.asset("assets/icons/FREE_RETURNS.webp")),
                Tab(icon: Image.asset("assets/icons/STAR_GREEN.webp")),
              ],
            ),
          ),
          Container(
            height: 25,
            color: Colors.blue[800],
            child: TabBarView(
              children: [
                Center(
                  child: Text(
                    "Free Shipping over \$30",
                    style: kDescriptionStyle,
                  ),
                ),
                Center(
                  child: Text(
                    "Free In-Store Pickup",
                    style: kDescriptionStyle,
                  ),
                ),
                Center(
                  child: Text(
                    "Free One Year Returns",
                    style: kDescriptionStyle,
                  ),
                ),
                Center(
                  child: Text(
                    "Over 91% 4-5 Star Reviews",
                    style: kDescriptionStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
