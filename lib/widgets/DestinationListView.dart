import 'package:flutter/material.dart';

import '../constants/Constants.dart';
import 'DestinationCard.dart';

class DestinationListView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return DestinationCard(destination: destinations[index]);
        },
      ),
    );
  }
}
