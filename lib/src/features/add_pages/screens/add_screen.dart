import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  child: const Text('Añadir producto'),
                  onPressed: () => Get.toNamed('/addproduct'),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  child: const Text('Añadir reseña'),
                  onPressed: () => Get.toNamed('/addreview'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
