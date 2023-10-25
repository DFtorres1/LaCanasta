import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_canasta/src/constants/image_strings.dart';
import 'package:la_canasta/src/constants/text_string.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image(
                  image: const AssetImage(mapSpotIcon),
                  width: size.width*0.7,
                  height: size.height*0.3,
                ),
                const Image(image: AssetImage(lcLogo)),
              ],
            ),
            const Column(
              children: [
                Text(lcWelcomeTitle),
                Text(lcWelcomeSubtitle),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () => Get.toNamed('/login'),
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          foregroundColor: Theme.of(context).primaryColor,
                          side: BorderSide(color: Theme.of(context).primaryColor),
                          padding: const EdgeInsets.symmetric(vertical: 15)
                        ),
                        child: Text(lcLogin.toUpperCase())
                    ),
                ),
                const SizedBox(width: 15),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => Get.toNamed('/signup'),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                            shape: const RoundedRectangleBorder(),
                            foregroundColor: Theme.of(context).unselectedWidgetColor,
                            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                            padding: const EdgeInsets.symmetric(vertical: 15)
                        ),
                        child:  Text(lcSignup.toUpperCase())
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}