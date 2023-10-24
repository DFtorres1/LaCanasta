import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
      ),
      child: const TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "BUSCAR",
            border: InputBorder.none
        ),
      ),
    );
  }

}