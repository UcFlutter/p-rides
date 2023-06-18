import 'package:flutter/material.dart';

import '../../screens/otp/otp_screen_passenger.dart';
import '../../screens/signing/signing_screen.dart';

class FormPassengerSection extends StatefulWidget {
  final bool isPassengerSignUp;
  const FormPassengerSection({
    super.key,
    required this.isPassengerSignUp,
  });

  @override
  State<FormPassengerSection> createState() => FormPassengerSectionState();
}

class FormPassengerSectionState extends State<FormPassengerSection> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 150,
              height: 47,
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('First Name'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 138,
              height: 47,
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Last Name'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        TextFormField(
          decoration: const InputDecoration(
            label: Text('Phone number'),
            border: OutlineInputBorder(),
            suffix: Icon(Icons.remove_red_eye),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Gender:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                Radio(
                  value: "male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(
                      () {
                        gender = value.toString();
                      },
                    );
                  },
                ),
                const Text('Male'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: "female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(
                      () {
                        gender = value.toString();
                      },
                    );
                  },
                ),
                const Text('Female')
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: const InputDecoration(
            label: Text('Password'),
            border: OutlineInputBorder(),
            suffix: Icon(Icons.remove_red_eye),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
            label: Text('Confirm Password'),
            border: OutlineInputBorder(),
            suffix: Icon(Icons.remove_red_eye),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 296,
          height: 48,
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
              OTPScreenPassenger.routeName,
            ),
            child: const Text('Sign up'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  SigningScreen.routeName,
                );
              },
              child: const Text('Sign In'),
            ),
          ],
        )
      ],
    );
  }
}
