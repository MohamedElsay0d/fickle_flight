import 'package:fickle_flight/constants/Offers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OfferCard extends StatelessWidget {
  final OfferCardData offer;

  const OfferCard({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
              height: 120, width: 150, child: Image.asset(offer.cardImage)),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${offer.offerPercentage} offer for',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                offer.cardType + ' users',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text('Limited time offer!', style: TextStyle(fontSize: 15)),
            ],
          )
        ],
      ),
    );
  }
}
