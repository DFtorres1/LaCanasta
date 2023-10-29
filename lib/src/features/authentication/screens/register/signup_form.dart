import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_canasta/src/features/authentication/controllers/signup_controller.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.red
                  ),
                  labelText: 'Nombre'
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.red
                  ),
                  labelText: 'Correo'
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                      Icons.phone_outlined,
                      color: Colors.red
                  ),
                  labelText: 'Número de teléfono'
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.red
                  ),
                  labelText: 'Contraseña'
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TextFormField(
              controller: controller.passwordRepeat,
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.red
                  ),
                  labelText: 'Repetir contraseña'
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    if (controller.phoneNo.text != "" || controller.phoneNo != null ){
                      SignUpController.instance.registerUser(
                        //controller.fullName.text.trim(),
                          controller.email.text.trim(),
                          //controller.phoneNo.text.trim(),
                          controller.password.text.trim()
                      );
                    }
                    if (controller.phoneNo.text != "" || controller.phoneNo != null ){
                      SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                      Get.toNamed("/otpscreen");
                    }
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Registro',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      )
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
