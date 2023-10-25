import 'package:flutter/material.dart';
import '../../../main_page/screens/home/home_screen.dart';

class CustomRegisterPage extends StatefulWidget {
  const CustomRegisterPage({super.key});

  @override
  State<CustomRegisterPage> createState() => _CustomRegisterPageState();
}

class _CustomRegisterPageState extends State<CustomRegisterPage> {

  /*
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(50.0),
          children: <Widget>[
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                            Icons.supervised_user_circle_outlined,
                            color: Colors.red
                        ),
                          labelText: 'Nombre'
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                              Icons.phone_outlined,
                              color: Colors.red
                          ),
                          labelText: 'Número de teléfono'
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                              Icons.password_outlined,
                              color: Colors.red
                          ),
                          labelText: 'Contraseña'
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                              Icons.password_outlined,
                              color: Colors.red
                          ),
                          labelText: 'Repetir contraseña'
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02), // Espacio adicional entre los TextField y el botón
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CustomHomePage()
                            ),
                          );
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
          ],
        ),
      ),
    );
  }
}
