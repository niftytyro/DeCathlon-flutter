import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 0;

  final List<String> _carouselPaths = [
    'assets/Slideshow-1.webp',
    'assets/Slideshow-2.webp',
    'assets/Slideshow-3.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: _carouselPaths.map((path) {
            return Stack(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Image.asset(
                    path,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'SHOP',
                      style: TextStyle(fontSize: 10.0),
                    ),
                    color: Colors.white,
                    shape: BeveledRectangleBorder(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
          options: CarouselOptions(
            height: 0.5 * MediaQuery.of(context).size.height,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 6),
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: _carouselPaths.map((path) {
                int index = _carouselPaths.indexOf(path);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color(0xFFFFFFFF)
                        : Color(0x55FFFFFF),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
