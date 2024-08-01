import 'package:flutter/material.dart';

import '../widgets/DestinationListView.dart';
import '../widgets/OfferListView.dart';
import '../widgets/dot.dart';
import '../widgets/horizontalListview.dart';

class explorePage extends StatelessWidget {
  const explorePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
            height: 240,
            child: Stack(
              children: [
                Image.asset('assets/Paris.jpg', fit: BoxFit.cover),
                const Positioned(
                  bottom: 35,
                  left: 25,
                  child: Text(
                    'Paris',
                    style: TextStyle(
                      color: Color.fromARGB(255, 5, 253, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 35,
                  right: 25,
                  child: Text(
                    '\$1299',
                    style: TextStyle(
                      color: Color.fromARGB(255, 5, 253, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: const Text(
              "Upcoming FLight                       ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('SIN',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 140, 255))),
                          Text('Singapore',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      SizedBox(width: 16),
                      dot(),
                      SizedBox(width: 10),
                      dot(),
                      SizedBox(width: 16),
                      Icon(Icons.flight_takeoff_rounded,
                          size: 32, color: Colors.blue),
                      SizedBox(width: 16),
                      dot(),
                      SizedBox(width: 10),
                      dot(),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          Text('LAX',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 1, 140, 255))),
                          Text('Los Angeles',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 10,
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Departs: 1 May, 08:00 AM'),
                      Text('4 days to go '),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          HorizontalListView(),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Trending Destinations",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Text("see all",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          DestinationListView(),
          Container(
            child: const Text("Offers",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          OfferListView()
        ],
      ),
    );
  }
}
