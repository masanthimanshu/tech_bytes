import 'package:flutter/material.dart';

class CryptoGrid extends StatelessWidget {
  const CryptoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (e, index) {
        return Container(
          width: 240,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.25),
                spreadRadius: 2,
                blurRadius: 4,
              ),
            ],
          ),
          child: const Center(child: Text("Data")),
        );
      },
    );
  }
}
