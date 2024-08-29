import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
        leading: Builder(
          builder: (BuildContext context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Open the drawer when the menu button is pressed
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Handle profile button press
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Attendance'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AttendancePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Fees'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notes),
              title: Text('Notes'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotesPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Your Attendance',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text('Mathematics'),
                      subtitle: Text('Attendance: 90%'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text('Physics'),
                      subtitle: Text('Attendance: 85%'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text('Chemistry'),
                      subtitle: Text('Attendance: 88%'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        leading: Builder(
          builder: (BuildContext context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Open the drawer when the menu button is pressed
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Attendance'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AttendancePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Fees'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notes),
              title: Text('Notes'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotesPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Notes Page'),
      ),
    );
  }
}

class FeesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fees'),
        leading: Builder(
          builder: (BuildContext context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Open the drawer when the menu button is pressed
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Attendance'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AttendancePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Fees'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Already on FeesPage, no need to navigate again
                // If needed, you could add code to refresh the page here
              },
            ),
            ListTile(
              leading: Icon(Icons.notes),
              title: Text('Notes'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotesPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Fees Page'),
      ),
    );
  }
}
