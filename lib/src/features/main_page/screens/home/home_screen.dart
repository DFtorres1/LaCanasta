import 'package:flutter/material.dart';
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
      body: ListView(
        children: [
          const Image(image: AssetImage(homeDiscount)),
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
              ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Column(
                    children: [
                      Image(
                        image: AssetImage(potatoesDiscount),
                        height: 20,
                      ),
                      Text('35000')
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
