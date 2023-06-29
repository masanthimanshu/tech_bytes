import 'package:flutter/material.dart';
import 'package:tech_bytes/components/drawer_components/crypto_grid.dart';
import 'package:tech_bytes/view/crypto/crypto.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text("L O G O"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Crypto"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CryptoScreen(),
                      ),
                    );
                  },
                  child: const Text("View All"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 90,
            child: CryptoGrid(),
          ),
        ],
      ),
    );
  }
}
