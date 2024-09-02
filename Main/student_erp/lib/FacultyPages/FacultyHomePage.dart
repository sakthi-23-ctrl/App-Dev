import 'package:flutter/material.dart';

class FacultyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty Home Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Faculty Home Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
