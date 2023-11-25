import 'package:flutter/material.dart';

import '../common_add_widgets/add_app_bar.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AddAppBar(appBarTitle: 'Crear Reseña',),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AddReview')
          ],
        ),
      ),
    );
  }
}
