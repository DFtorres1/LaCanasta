import 'package:flutter/material.dart';
import '../../../../constants/image_strings.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class CustomLoginPage extends StatefulWidget {
  const CustomLoginPage({super.key});

  @override
  State<CustomLoginPage> createState() => _CustomLoginPageState();
}

class _CustomLoginPageState extends State<CustomLoginPage> {
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    phoneNumberController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
/*
    Future signIn() async {
      await FirebaseAuth.instance.signInWithPhoneNumber(phoneNumber: phoneNumberController.text.trim());
    }

    PhoneAuthOptions options
 */

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if(!isKeyboard)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Image.asset(
                    width: MediaQuery.of(context).size.width,
                    farmerImage,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: ListView(
                  children: const <Widget>[
                    LoginHeaderWidget(),
                    LoginForm(),
                    LoginFooterWidget()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
