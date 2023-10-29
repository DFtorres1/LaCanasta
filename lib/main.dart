import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_canasta/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:la_canasta/src/repository/authentication_repository/authenticacion_repository.dart';
import 'package:la_canasta/src/routing/routes.dart';
import 'package:la_canasta/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepository()));

  runApp(GestureDetector(
    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'La canasta',
      themeMode: ThemeMode.system,
      theme: LaCanastaTheme.lightTheme,
      darkTheme: LaCanastaTheme.darkTheme,
      //debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      getPages: routes,
      home: const CircularProgressIndicator(),
    );
  }
}
