import 'package:flutter/material.dart';
import 'package:p_rides/screens/forgot_password/forgot_password_screen.dart';

import '../../screens/home.dart';

class FormSectionDriver extends StatelessWidget {
  const FormSectionDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Phone number'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text('Password'),
              border: OutlineInputBorder(),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                ForgotPassword.routeName,
              ),
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                    // color: Colors.black,
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 296,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Sign in'),
            ),
          ),
        ],
      ),
    );
  }
}
