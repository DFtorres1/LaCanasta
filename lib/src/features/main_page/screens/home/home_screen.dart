import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:la_canasta/src/constants/image_strings.dart';
import 'package:la_canasta/src/constants/text_string.dart';
import '../../common_mp_widgets/custom_app_bar.dart';

class CustomHomePage extends StatefulWidget {
  const CustomHomePage({super.key});

  @override
  State<CustomHomePage> createState() => _CustomHomePageState();
}

class _CustomHomePageState extends State<CustomHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Image(image: AssetImage(homeDiscount)),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      lcHomeOffers,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Icon(Icons.discount)
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          const Image(
                            image: AssetImage(potatoesDiscount),
                            height: 120,
                          ),
                          Text(
                            '35.000',
                            style: GoogleFonts.ubuntu(
                              fontSize: 35,
                              color: Theme.of(context).colorScheme.primary
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                'CATEGORÍAS',
                style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
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
                      ],
                    )
                ),
              ],
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
