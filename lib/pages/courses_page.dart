import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  final String courseName;
  const CoursesPage({super.key, required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(courseName)),
      body: Center(
        child: Text(
          "Welcome to $courseName 📚",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
