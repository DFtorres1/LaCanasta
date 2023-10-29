import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_canasta/src/constants/text_string.dart';

class ForgetPasswordMailScreen extends StatelessWidget{
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
              children: [
                const Center(
                  child: Icon(Icons.mail, size: 300),
                ),
                const SizedBox(height: 100),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: lcFPEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded)
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.toNamed("/otpscreen"),
                          style: OutlinedButton.styleFrom(
                            //backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              padding: const EdgeInsets.symmetric(vertical: 10)
                          ),
                          child: const Text(
                            "Siguiente",
                            style: TextStyle(
                                fontSize: 30
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]
          ),
        ),
      ),

    );
  }
}