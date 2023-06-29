import 'package:flutter/material.dart';
import 'package:tech_bytes/components/drawer.dart';
import 'package:tech_bytes/view/profile/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TechBytes"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProfileScreen(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Icon(Icons.person_outlined),
            ),
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: const Center(child: Text("Home Page")),
    );
  }
}
