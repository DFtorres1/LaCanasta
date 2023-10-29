import 'package:flutter/material.dart';
import 'package:la_canasta/src/constants/text_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: const Text(
              lcTitleCc,
              style: TextStyle(
                fontFamily: 'PublicPixel',
                color: Colors.red,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          const Text(
            lcLoginScreenText,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        ]
    );
  }
}
