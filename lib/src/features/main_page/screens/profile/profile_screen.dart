import 'package:flutter/material.dart';
import 'package:la_canasta/src/repository/authentication_repository/authenticacion_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Perfil'),
            ElevatedButton(
              onPressed: () {
                AuthenticationRepository.instance.logout();
              },
              child: const Icon(Icons.logout),
            )
          ],
        ),
      ),
    );
  }
}
