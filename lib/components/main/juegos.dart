import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class JuegosCarruselWidget extends StatelessWidget {
  final List<String> _images = [
    'assets/splatoon.jpg',
    'assets/splatoon.jpg',
    'assets/splatoon.jpg',
    'assets/splatoon.jpg',
    'assets/splatoon.jpg',
    'assets/splatoon.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
        child: Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Servicios específicos para juegos',
                style: TextStyle(color: Colors.white, fontSize: 26.0),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                ),
                itemCount: (_images.length / 2).round(),
                itemBuilder: (context, index) {
                  final int first = index * 2;
                  final int second = first + 1;
                  return Row(
                    children: [first, second].map((idx) {
                      return Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset(_images[idx], fit: BoxFit.cover),
                            ),
                            SizedBox(height: 10,),
                            Text('Splatoon 2', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      );
                    }).toList(),
                  );
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    ));
  }
}
