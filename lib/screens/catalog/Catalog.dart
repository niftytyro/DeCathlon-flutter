import 'package:decathlon_clone/components/DeCathlonScaffold.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Catalog extends StatelessWidget {
  static const path = '/catalog';

  @override
  Widget build(BuildContext context) {
    return DeCathlonScaffold(
      body: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 0.5,
        children: [
          CatalogSampleItem(),
          CatalogSampleItem(),
          CatalogSampleItem(),
          CatalogSampleItem(),
          CatalogSampleItem(),
          CatalogSampleItem(),
          CatalogSampleItem(),
          CatalogSampleItem(),
          CatalogSampleItem(),
        ],
      ),
    );
  }
}

class CatalogSampleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              "assets/bike.webp",
            ),
          ),
          Container(
            color: Colors.grey,
            height: 1.0,
          ),
          SizedBox(height: 10.0),
          Text("Great Bike", style: TextStyle(fontSize: 15.0)),
          SizedBox(height: 5.0),
          SmoothStarRating(
            allowHalfRating: true,
            starCount: 5,
            rating: 4.5,
            size: 25.0,
            isReadOnly: true,
            color: Colors.amber,
          ),
          SizedBox(height: 5.0),
          Text(
            "\$499",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
