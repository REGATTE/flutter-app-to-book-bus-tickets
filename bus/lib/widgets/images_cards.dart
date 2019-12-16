import 'package:bus/models/places.dart';
import 'package:flutter/material.dart';

import 'image_card.dart';

class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Place> places = [
    Place(
        place: 'BOTANICAL GARDEN \nMETRO STATION', image: 'bgms.jpg', time: '1:30 hours'),
    Place(
        place: 'DLF MALL', image: 'dlf.jpg', time: '2 hours'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: places[index],
                name: places[index].place,
                duration: places[index].time,
                picture: places[index].image,
              );
            }));
  }
}
