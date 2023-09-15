import 'package:flutter/material.dart';
import 'student_profile_setup.dart'; // Import your student profile setup file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // You can customize the app's theme here
      ),
      home: StudentProfileSetup(), // Set the StudentProfileSetup widget as the home screen
    );
  }
}

