import 'package:flutter/material.dart';

import '../constants/Offers.dart';
import 'OfferCard.dart';

class OfferListView extends StatelessWidget {
  final List<OfferCardData> Offers = [
    OfferCardData(
      cardImage: 'assets/mastercard.jpg',
      offerPercentage: '20%',
      cardType: 'Mastercard',
    ),
    OfferCardData(
      cardImage: 'assets/visa.jpg',
      offerPercentage: '25%',
      cardType: 'Visa',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Offers.length,
        itemBuilder: (context, index) {
          return OfferCard(offer: Offers[index]);
        },
      ),
    );
  }
}
