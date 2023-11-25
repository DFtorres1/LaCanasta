import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/image_strings.dart';

class discount_widget extends StatelessWidget {
  const discount_widget({
    super.key, required this.discountText, required this.discountImage,
  });

  final AssetImage discountImage;
  final String discountText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image(
            image: discountImage,
            height: 120,
          ),
          Text(
            discountText,
            style: GoogleFonts.ubuntu(
                fontSize: 35,
                color: Theme.of(context).colorScheme.primary
            ),
          )
        ],
      )
    );
  }
}
