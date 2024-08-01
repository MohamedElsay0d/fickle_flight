import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildBottom(Icons.flight, 'Flight', Colors.blue),
          _buildBottom(Icons.hotel, 'Hotels', Colors.pink),
          _buildBottom(
              Icons.local_offer, 'Attractions', Colors.orange),
          _buildBottom(Icons.restaurant, 'Eat', Colors.green),
          _buildBottom(
              Icons.directions_bus, 'Commute', Colors.yellow),
        ],
      ),
    );
  }

  Widget _buildBottom(
      IconData icon, String label, Color color) {
    return Container(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Text(label,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
