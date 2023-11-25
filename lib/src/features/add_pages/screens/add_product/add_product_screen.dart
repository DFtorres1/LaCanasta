import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/image_strings.dart';
import '../common_add_widgets/add_app_bar.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddAppBar(appBarTitle: 'Añadir producto',),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.add_photo_alternate_outlined),
                        //FormField(builder: builder),
                        Text('Foto real del producto'),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text('Más fotos')
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.description),
                        Text('Nombre del producto'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Escribe aquí lo que vas a vender',
                          hintText: 'Escribe un nombre claro de tu producto.',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.brush),
                        Text('Descripción del producto'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Añade una descripción a tu producto',
                          hintText: 'Una descripción bien escrita ayudará a vender más fácil el producto.',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.discount),
                          Text('Descripción del producto'),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage(potatoesDiscount),
                              height: 120,
                            ),
                            Text(
                              'Verduras',
                              style: GoogleFonts.ubuntu(
                                fontSize: 25,
                                color: Theme.of(context).colorScheme.primary
                              ),
                            )
                          ],
                        )
                      )
                    ]
                  )
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.monetization_on),
                        Text('Precio'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Precio',
                          hintText: 'Introduzca el precio',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Unidad',
                          hintText: 'Ingrese unidades(Kg, litro, pieza)',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Disponible',
                          hintText: 'Ingrese la cantidad a vender',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.hourglass_bottom),
                    const Text('Estado'),
                    const SizedBox(width: 20),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: FloatingActionButton(
                          onPressed: (){},
                          child: const Text('Disponible')
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: FloatingActionButton(
                          onPressed: (){},
                          child: const Text('Muy pronto')
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.date_range),
                        Text('Fecha de publicación'),
                      ],
                    ),
                    CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now(),
                      onDateChanged: (DateTime d){}
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.map),
                        Text('Dirección'),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Dirección de envío',
                          hintText: 'Introduce tu dirección para concretar un lugar de envío.',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
