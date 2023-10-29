import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/text_string.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              lcFPTitle,
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            const Text(
              lcFPSubtitle,
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            const SizedBox(height: 30),
            ForgetPasswordBtnWidget(
              icon: Icons.mail_outline_rounded,
              btnTitle: lcFPEmail,
              btnSubtitle: lcFPViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.toNamed("/forgetpassmail");
              },
            ),
            const SizedBox(height: 20),
            ForgetPasswordBtnWidget(
              icon: Icons.mobile_friendly,
              btnTitle: lcFPPhone,
              btnSubtitle: lcFPViaPhone,
              onTap: () {
                Navigator.pop(context);
                Get.toNamed("/forgetpassphone");
              },
            ),
          ],
        ),
      ),
    );
  }
}