import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:la_canasta/src/features/authentication/screens/login/login_screen.dart';
import 'package:la_canasta/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:la_canasta/src/features/authentication/screens/register/register_screen.dart';
import 'package:la_canasta/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:la_canasta/src/features/main_page/common_mp_widgets/navigation_bar.dart';
import 'package:la_canasta/src/features/main_page/screens/home/home_screen.dart';

final routes = [
  GetPage(
    name: '/onBrd',
    page: () => OnBoardingScreen(),
  ),
  GetPage(
    name: '/welcome',
    page: () => const WelcomeScreen(),
  ),
  GetPage(
    name: '/mainpage',
    page: () => const MainNavigationBar(),
  ),
  GetPage(
      name: '/login',
      page: () => const CustomLoginPage()
  ),
  GetPage(
      name: '/signup',
      page: () => const CustomRegisterPage()
  ),
  GetPage(
      name: '/home',
      page: () => const CustomHomePage()
  )
  // Otras rutas...
];