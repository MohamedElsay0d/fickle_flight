import 'package:fickle_flight/views/searchPage.dart';
import 'package:flutter/material.dart';
import '../views/Booking.dart';
import '../views/OffersPage.dart';
import '../views/explorePage.dart';
import '../views/profilePage.dart';
// import '../widgets/MyNavigationBar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int variable = 0;
  final List _screens = [
    const explorePage(),
    const BookingPage(),
    const SearchPage(),
    OffersListView(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: const Text(
            'FickleFlight',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          actions: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  variable = 4;
                });
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Mohamed.jpg'),
                radius: 20,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Mohamed ElSayed'),
                accountEmail: Text('me827794@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/Mohamed.jpg'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  setState(() {
                    variable = 4;
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('All Bookings'),
                onTap: () {
                  setState(() {
                    variable = 1;
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favourites'),
                onTap: () {
                  // anything you need
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Get Help'),
                onTap: () {
                  // anything you need
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Covid Advisory'),
                onTap: () {
                  // anything you need
                },
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Rate us'),
                onTap: () {
                  // anything you need
                },
              ),
              Divider(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('App version 1.0.1'),
              ),
            ],
          ),
        ),
        body: _screens[variable],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: variable,
          onTap: (value) {
            setState(() {
              variable = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.luggage),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.shifting,
        ));
  }
}
