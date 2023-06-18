import 'package:flutter/material.dart';

import '../../screens/otp/otp_screen_driver.dart';
import '../../screens/otp/otp_screen_passenger.dart';
import '../../screens/signing/signing_screen.dart';

class FormDriverSection extends StatefulWidget {
  bool isDriverSignUp;
  FormDriverSection({
    super.key,
    required this.isDriverSignUp,
  });

  @override
  State<FormDriverSection> createState() => _FormDriverSectionState();
}

class _FormDriverSectionState extends State<FormDriverSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            label: Text('Email'),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
            label: Text('Phone number'),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
            label: Text('Password'),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        DropdownButtonFormField(
          hint: Text('City'),
          items: [],
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (value) {},
            ),
            const Expanded(
              child: SizedBox(
                width: 261,
                height: 60,
                child: Text(
                  'Lorem ipsum dolor sit amet,fjf consectetur adipiscing elit Lorem ipsum dolor sit amet,fjf consectetur adipiscing elit.',
                  maxLines: 3,
                  // softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 296,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                OTPScreenDriver.routeName,
                arguments: widget.isDriverSignUp,
              );
            },
            child: const Text('Sign up'),
          ),
        ),
        const SizedBox(
          height: 20,
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
