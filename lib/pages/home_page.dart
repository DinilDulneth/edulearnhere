import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Detai")),
      body: const Center(
        child: Text(
          "This is the full Home Page 🏠",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
