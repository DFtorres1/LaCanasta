import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:la_canasta/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:la_canasta/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:la_canasta/src/routing/routes.dart';
import 'package:la_canasta/src/utils/theme/theme.dart';
import 'src/features/authentication/screens/login/login_screen.dart';
// import './screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); //.then((value) => Get.put(AuthenticationRepository()));
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
          theme: LaCanastaTheme.lightTheme,
          darkTheme: LaCanastaTheme.darkTheme,
          themeMode: ThemeMode.system,
          getPages: routes,
          home: OnBoardingScreen()
      );
  }
}
