import 'package:flutter/material.dart';

import '../constants/Destination.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;

  const DestinationCard({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext
 context) {
    return
 Container(
  height: 120,
      width: 150, 
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(destination.imageUrl),
          Text(destination.name, style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: List.generate(
              destination.rating,
              (index) => Icon(Icons.star, color: Colors.yellow),
            ),
          ),
          Text(destination.country),
        ],
      ),
    );
  }
}