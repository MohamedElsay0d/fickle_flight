import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/Developer.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  left: 16,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Handle back button press
                    },
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/Mohamed.jpg'),
                ),
                SizedBox(height: 8),
                Text('Mohamed ElSayed',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Baguio, Philippines'),
                Text(
                    'I like the beach, mountains, forest and everything about nature!'),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text('Payment Details'),
                  onTap: () {
                    // Handle Payment Details
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Covid Advisory'),
                  onTap: () {
                    // Handle Covid Advisory
                  },
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: Text('Referral Code'),
                  onTap: () {
                    // Handle Referral Code
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    // Handle Settings
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () {
                    // Handle Logout
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
