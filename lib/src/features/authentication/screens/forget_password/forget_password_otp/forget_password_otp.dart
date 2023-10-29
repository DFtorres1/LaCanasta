import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:la_canasta/src/constants/text_string.dart';
import 'package:la_canasta/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context){
    var otpController = Get.put(OTPController());
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              lcOTPTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80
            ),
            ),
            Text(
              lcOTPSubtitle.toUpperCase(),
              style: const TextStyle(
                fontSize: 30
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              '$lcOTPMessage mail@example.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 6,
              filled: true,
              fillColor: Colors.black.withOpacity(0.15),
              onSubmit: (code){
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  OTPController.instance.verifyOTP(otp);
                },
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
          ]
        ),
      ),
    );
  }
}