import 'package:flutter/material.dart';

import '../../constants/styles.dart';
import 'signing_as_driver.dart';
import 'signing_as_passenger.dart';

class SigningScreen extends StatelessWidget {
  static const routeName = '/signing-screen';
  const SigningScreen({super.key});

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
                    'Sign in as',
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
                            SigningAsPassenger.routeName,
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
                            SigningAsDriver.routeName,
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
