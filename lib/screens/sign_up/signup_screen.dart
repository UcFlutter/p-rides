import 'package:flutter/material.dart';
import 'package:p_rides/constants/styles.dart';

import 'sign_up_driver.dart';
import 'sign_up_passenger.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-up-screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Phone.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Sign up as',
                    style: kHeaderText,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                            context,
                            SignUpAsPassenger.routeName,
                          ),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                                size: 50,
                              ),
                              Text(
                                'Passenger',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                            context,
                            SignUpAsDriver.routeName,
                          ),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                                size: 50,
                              ),
                              Text(
                                'Driver',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
