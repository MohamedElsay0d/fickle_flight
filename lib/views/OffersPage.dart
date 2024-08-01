import 'package:flutter/material.dart';

import '../constants/Offers.dart';
import '../widgets/OffersCard.dart';

class OffersListView extends StatelessWidget {
  final List<OffersCardData> discounts = [
    OffersCardData(
      title: 'Get 20% discount with your Master credit cards',
      cardImage: 'assets/mastercard.jpg',
      description:
          'Use your mastercard with any transaction and get 20% discount instantly!',
    ),
    OffersCardData(
      title: '25% discount with your VISA credit or debit cards',
      cardImage: 'assets/visa.jpg',
      description:
          'Use your VISA credit or debit card with any transaction and get 25% discount instantly!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: discounts.length,
      itemBuilder: (context, index) {
        return OffersCard(offer: discounts[index]);
      },
    );
  }
}
