import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/image_strings.dart';

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(googleLogo),
              height: 20,
              width: 20,
            ),
            onPressed: () => Get.toNamed('/mainpage'),
            style: OutlinedButton.styleFrom(
              //backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFffffff)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                padding: const EdgeInsets.symmetric(vertical: 10)
            ),
            label: const Text(
              'Sign in with Google',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            ),
          ),
        ),
        TextButton(
            onPressed: () => Get.toNamed('/login'),
            child: const Text.rich(
              TextSpan(text: 'Ya tienes cuenta?'),
              style: TextStyle(
                  fontSize: 18
              ),
            )
        ),
      ],
    );
  }
}
