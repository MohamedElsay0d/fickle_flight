import 'package:fickle_flight/constants/Offers.dart';
import 'package:flutter/material.dart';

class OffersCard extends StatelessWidget {
  final OffersCardData offer;

  const OffersCard({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  offer.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.favorite_border),
              ],
            ),
            const SizedBox(height: 8),
            Image.asset(offer.cardImage),
            const SizedBox(height: 8),
            Text(offer.description),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
