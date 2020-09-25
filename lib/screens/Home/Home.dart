import 'package:decathlon_clone/components/DeCathlonScaffold.dart';
import 'package:flutter/material.dart';

import 'Carousel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DeCathlonScaffold(
      body: Column(
        children: [
          Carousel(),
        ],
      ),
    );
  }
}
