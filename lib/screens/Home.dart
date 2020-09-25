import 'package:carousel_slider/carousel_slider.dart';
import 'package:decathlon_clone/components/DeCathlonScaffold.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;

  final List<String> _carouselPaths = [
    'assets/Slideshow-1.webp',
    'assets/Slideshow-2.webp',
    'assets/Slideshow-3.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return DeCathlonScaffold(
      // body: Container(),
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: _carouselPaths.map((path) {
                  return Image.asset(
                    path,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
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
                        margin: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 8.0),
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
          ),
        ],
      ),
    );
  }
}
