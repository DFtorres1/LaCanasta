import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:la_canasta/src/features/add_pages/screens/add_product/add_product_screen.dart';
import 'package:la_canasta/src/features/add_pages/screens/add_review/add_review_screen.dart';
import 'package:la_canasta/src/features/add_pages/screens/add_screen.dart';
import 'package:la_canasta/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:la_canasta/src/features/authentication/screens/forget_password/forget_password_otp/forget_password_otp.dart';
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
    name: '/forgetpassmail',
    page: () => const ForgetPasswordMailScreen(),
  ),
  GetPage(
    name: '/forgetpassphone',
    page: () => const ForgetPasswordMailScreen(),
  ),
  GetPage(
    name: '/otpscreen',
    page: () => const OTPScreen(),
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
  ),
  GetPage(
    name: '/addscreen',
    page: () => const AddScreen()
  ),
  GetPage(
    name: '/addproduct',
    page: () => const AddProductScreen()
  ),
  GetPage(
    name: '/addreview',
    page: () => const AddReviewScreen()
  )
  // Otras rutas...
];