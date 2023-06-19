import 'package:flutter/material.dart';

class Station {
  final String stationName;
  final String price;
  final String? imageUrl;
  final String discription;
  final String distance;
  final String address;

  const Station(
      {required this.distance,
      required this.address,
      required this.stationName,
      required this.price,
      required this.imageUrl,
      required this.discription});
}
