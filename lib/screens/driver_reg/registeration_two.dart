import 'package:flutter/material.dart';
import 'package:p_rides/constants/styles.dart';

import 'registeration_three.dart';

class RegistrationTwo extends StatelessWidget {
  static const routeName = '/registration-two';
  const RegistrationTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your national ID and license details will be kept private.',
                style: kSubtitleText,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Driver License Number'),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '00000000000',
                ),
              ),
              const Text(
                'To update please contact customer care',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Driver License Expires'),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '00000000000',
                ),
              ),
              const Text(
                'To update please contact customer care',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    RegistrationThree.routeName,
                  ),
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
