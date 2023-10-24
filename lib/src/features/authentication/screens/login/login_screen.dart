import 'package:flutter/material.dart';
import 'package:la_canasta/src/constants/text_string.dart';
import '../../../../constants/image_strings.dart';
import '../../../main_page/screens/home_screen.dart';
import '../register/register_screen.dart';
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
              height: MediaQuery.of(context).size.height * 0.4,
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Image.asset(
                      farmerImage,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10),
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
                      'Compre, venda y experimente productos agrícolas en todas las regiones de Colombia.',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    TextField(
                      controller: phoneNumberController,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                          labelText: 'Número de teléfono'
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    TextField(
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                          labelText: 'Contraseña'
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){}//signIn
                          /*() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomHomePage(title: widget.title)
                                ),
                            );
                          }

                           */
                          ,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                              )
                            )
                          ),
                          child: const Text(
                            'Acceso',
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 20
                            ),
                          )
                      )
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CustomRegisterPage()
                            ),
                          );
                        },
                        child: const Text(
                            'Crear cuenta',
                          style: TextStyle(
                            fontSize: 18
                          ),
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
