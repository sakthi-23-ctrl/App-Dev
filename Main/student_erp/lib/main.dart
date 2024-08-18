import 'package:flutter/material.dart';

void main() {
  runApp(StudentERPApp());
}

class StudentERPApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student ERP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student ERP Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Student View'),
            onTap: () {
              // Navigate to Student View
            },
          ),
          ListTile(
            leading: Icon(Icons.how_to_reg),
            title: Text('HOD View'),
            onTap: () {
              // Navigate to HOD View
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Faculty View'),
            onTap: () {
              // Navigate to Faculty View
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text('Attendance Management'),
            onTap: () {
              // Navigate to Attendance Management
            },
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Fee Management'),
            onTap: () {
              // Navigate to Fee Management
            },
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Upload Notes & Circulars'),
            onTap: () {
              // Navigate to Notes & Circulars Upload
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Personal Chat with Mentor'),
            onTap: () {
              // Navigate to Personal Chat
            },
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Leave Intimation'),
            onTap: () {
              // Navigate to Leave Intimation
            },
          ),
        ],
      ),
    );
  }
}
