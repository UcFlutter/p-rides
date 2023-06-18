import 'package:flutter/material.dart';

import '../widgets/stepperWidget.dart';

class LocationScreen extends StatelessWidget {
  static const routeName = '/location_screen';
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 269,
                height: 51,
                color: const Color.fromRGBO(
                  207,
                  206,
                  206,
                  0.298,
                ),
                child: const Center(
                  child: Text('Mon,  25 sept at PM- 5:00 PM'),
                ),
              ),
              StepperForm(),
            ],
          ),
        ),
      ),
    );
  }
}
