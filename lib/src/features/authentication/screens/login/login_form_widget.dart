import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_canasta/src/constants/text_string.dart';
import 'package:la_canasta/src/features/authentication/controllers/login_controller.dart';
import '../../../../constants/image_strings.dart';
import '../forget_password/forget_password_options/forget_password_btn_widget.dart';
import '../forget_password/forget_password_options/forget_password_model_btn_sheet.dart';

class LoginForm extends StatelessWidget{
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context){
    final controller = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
        child: Container(
          padding: const EdgeInsets.only(top: 20,bottom: 10),
          child: Column(
              children: [
                TextFormField(
                  controller: controller.email,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    labelText: 'E-Mail',
                    hintText: 'E-Mail',
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextFormField(
                  controller: controller.password,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      labelText: 'Contraseña',
                      hintText: 'Contraseña',
                      suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye))
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: const Text(
                      'Olvidé mi contraseña',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          LoginController.instance.login(
                            controller.email.text.trim(),
                            controller.password.text.trim()
                          );
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        //backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.symmetric(vertical: 10)
                      ),
                      child: const Text(
                        'Iniciar sesión',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      )
                  ),
                ),
              ]
          ),
        )
    );
  }
}
