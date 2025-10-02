import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Details")),
      body: const Center(
        child: Text(
          "More Profile Options Here 👤",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
