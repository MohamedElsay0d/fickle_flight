import 'package:flutter/material.dart';

import '../widgets/dot.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: const Text(
                  "Upcoming FLight                   ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 330,
                  width: 390,
                  child: Image.asset('assets/booking_image.jpg',
                      fit: BoxFit.fitWidth)),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Row(
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
                    const SizedBox(height: 10),
                    const Divider(
                      height: 10,
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('United Airlined'),
                        Row(
                          children: [
                            Icon(Icons.timer),
                            Text('01 hr 40 min'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text('Show more details...',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 45),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {},
                          child: const Text('Edit Booking',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28)),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

