import 'package:flutter/material.dart';
import 'package:petpals/users/first_page.dart';

class PetProfilePage extends StatefulWidget {
  const PetProfilePage({super.key});

  @override
  State<PetProfilePage> createState() => _PetProfilePageState();
}

class _PetProfilePageState extends State<PetProfilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the key to the Scaffold
      appBar: AppBar(
        automaticallyImplyLeading: false, // Add this line
        leading: null, // Ensure the leading icon is set to null
        title: Image.asset(
          'images/LOGO.png',
          fit: BoxFit.fill, // Ensures the logo fits within the title area
          height: 80, // Adjust the height to fit your logo
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                // Handle tap on item 2
              },
            ),
            ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                // Handle tap on item 2
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              color: Colors.black,
              width: double.infinity,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Missing',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    'Found',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
