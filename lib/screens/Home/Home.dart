import 'package:decathlon_clone/components/DeCathlonScaffold.dart';
import 'package:flutter/material.dart';

import 'Carousel.dart';
import 'FeaturesTabView.dart';
import 'OnBoardSection.dart';

class Home extends StatelessWidget {
  static const path = "/home";
  @override
  Widget build(BuildContext context) {
    return DeCathlonScaffold(
      body: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Carousel(),
            OnBoardSection(),
            FeaturesTabView(),
          ],
        ),
      ),
    );
  }
}
