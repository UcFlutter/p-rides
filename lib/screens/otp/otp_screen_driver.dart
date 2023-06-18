import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:p_rides/screens/driver_reg/registeration_one.dart';

import '../../constants/styles.dart';

class OTPScreenDriver extends StatefulWidget {
  static const routeName = '/otp-screen-driver';
  const OTPScreenDriver({super.key});

  @override
  State<OTPScreenDriver> createState() => _OTPScreenDriverState();
}

class _OTPScreenDriverState extends State<OTPScreenDriver> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(
        context,
        RegistrationOne.routeName,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Verify Phone Number',
              style: kHeaderText,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Enter the 6-digit code sent to you\nat +234 814 499 3373.',
            ),
            const SizedBox(
              height: 20,
            ),
            OTPTextField(
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 305,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        backgroundColor: Colors.blue,
                        icon: Icon(
                          Icons.check,
                          size: 50,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Success',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text('Verify'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('00:05'),
            const SizedBox(
              height: 10,
            ),
            const Text('Didn\'t reciece a code?'),
            const Text('Resend Code')
          ],
        ),
      ),
    );
  }
}
