import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Track the selected index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });

    // Navigate to the selected page
    switch (index) {
      case 0:
        // Navigate to Home Page (current)
        break;
      case 1:
        // Navigate to Attendance Page
        break;
      case 2:
        // Navigate to Fees Page
        break;
      case 3:
        // Navigate to Notes Page
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student ERP Home'),
        leading: PopupMenuButton<String>(
          onSelected: (String result) {
            switch (result) {
              case 'Fees':
                // Navigate to Fees Page
                break;
              case 'Attendance':
                // Navigate to Attendance Page
                break;
              case 'Notes':
                // Navigate to Notes Page
                break;
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Home',
              child: Text('Home'),
            ),
            const PopupMenuItem<String>(
              value: 'Fees',
              child: Text('Fees'),
            ),
            const PopupMenuItem<String>(
              value: 'Attendance',
              child: Text('Attendance'),
            ),
            const PopupMenuItem<String>(
              value: 'Notes',
              child: Text('Notes'),
            ),
          ],
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to Profile Page
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Placeholder image URL
                ),
                SizedBox(width: 16),
                Text(
                  'John Doe', // Replace with actual name
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Circulars & News',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: Text('Circular 1'),
                      subtitle: Text('Details about circular 1'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('News 1'),
                      subtitle: Text('Details about news 1'),
                    ),
                  ),
                  // Add more cards as needed
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Color.fromARGB(255, 0, 0, 0), // Set the background color to black
        selectedItemColor: Color.fromARGB(
            255, 5, 0, 0), // Set the selected item color to white
        unselectedItemColor:
            Colors.grey, // Set the unselected item color to grey
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Fees',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Notes',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          if (_selectedIndex != index) {
            _onItemTapped(index);
          }
        },
      ),
    );
  }
}
