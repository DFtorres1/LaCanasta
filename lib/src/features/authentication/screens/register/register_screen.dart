import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_canasta/src/features/authentication/screens/register/signup_footer_widget.dart';
import 'package:la_canasta/src/features/authentication/screens/register/signup_form.dart';
import '../../../main_page/screens/home/home_screen.dart';

class CustomRegisterPage extends StatefulWidget {
  const CustomRegisterPage({super.key});

  @override
  State<CustomRegisterPage> createState() => _CustomRegisterPageState();
}

class _CustomRegisterPageState extends State<CustomRegisterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
          child: const Center(
            child: Column(
              children: [
                Text(
                  'Registro',
                  style: TextStyle(
                    fontSize: 50
                  ),
                ),
                SignupForm(),
                SignupFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
