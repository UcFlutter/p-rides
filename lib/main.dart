import 'package:flutter/material.dart';
import 'package:p_rides/screens/forgot_password/change_password_screen.dart';
import 'package:p_rides/screens/driver_reg/registeration_five.dart';
import 'package:p_rides/screens/driver_reg/registeration_four.dart';
import 'package:p_rides/screens/driver_reg/registeration_one.dart';
import 'package:p_rides/screens/driver_reg/registeration_seven.dart';
import 'package:p_rides/screens/driver_reg/registeration_six.dart';
import 'package:p_rides/screens/driver_reg/registeration_three.dart';
import 'package:p_rides/screens/driver_reg/registeration_two.dart';
import 'package:p_rides/screens/forgot_password/forgot_password_screen.dart';
import 'package:p_rides/screens/location_screen.dart';
import 'package:p_rides/screens/onboarding_screen.dart';
import 'package:p_rides/screens/otp/otp_screen_passenger.dart';
import 'package:p_rides/screens/sign_up/signup_screen.dart';
import 'package:p_rides/screens/signing/signing_as_driver.dart';
import 'package:p_rides/screens/signing/signing_as_passenger.dart';
import 'package:p_rides/screens/signing/signing_screen.dart';
import './screens/splash_screen.dart';
import 'screens/driver_reg/registeration_eight.dart';
import 'screens/forgot_password/otp_change_password.dart';
import 'screens/home.dart';
import 'screens/home_two.dart';
import 'screens/otp/otp_screen_driver.dart';
import 'screens/sign_up/sign_up_driver.dart';
import 'screens/sign_up/sign_up_passenger.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: const Scaffold(
        body: SplashScreen(),
      ),
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpAsDriver.routeName: (context) => const SignUpAsDriver(),
        SignUpAsPassenger.routeName: (context) => const SignUpAsPassenger(),
        OTPScreenPassenger.routeName: (context) => const OTPScreenPassenger(),
        OTPScreenDriver.routeName: (context) => const OTPScreenDriver(),
        RegistrationOne.routeName: (context) => const RegistrationOne(),
        RegistrationTwo.routeName: (context) => const RegistrationTwo(),
        RegistrationThree.routeName: (context) => const RegistrationThree(),
        RegistrationFour.routeName: (context) => const RegistrationFour(),
        RegistrationFive.routeName: (context) => const RegistrationFive(),
        RegistrationSix.routeName: (context) => const RegistrationSix(),
        RegistrationSeven.routeName: (context) => const RegistrationSeven(),
        RegistrationEight.routeName: (context) => const RegistrationEight(),
        SigningScreen.routeName: (context) => const SigningScreen(),
        SigningAsDriver.routeName: (context) => const SigningAsDriver(),
        SigningAsPassenger.routeName: (context) => const SigningAsPassenger(),
        ForgotPassword.routeName: (context) => const ForgotPassword(),
        ChangePasswordScreen.routeName: (context) =>
            const ChangePasswordScreen(),
        OTPChangePassword.routeName: (context) => const OTPChangePassword(),
        HomeScreen.routeName: (context) => HomeScreen(),
        HomeTwo.routeName: (context) => const HomeTwo(),
        LocationScreen.routeName: (context) => const LocationScreen(),
      },
    );
  }
}
