import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
        margin: const EdgeInsets.all(10),
        child: const SearchBar(
          hintText: 'Buscar',
        )
    );
  }
}