import 'package:flutter/material.dart';

class StepperForm extends StatefulWidget {
  const StepperForm({super.key});

  @override
  State<StepperForm> createState() => _StepperFormState();
}

class _StepperFormState extends State<StepperForm> {
  int _currentStep = 0;
  final List<Step> _step = [
    Step(
      title: const Text('location'),
      content: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Search Destination',
              ),
            ),
          ),
        ],
      ),
    ),
    const Step(
      title: Text('Home'),
      content: Text('Add Home'),
    ),
    const Step(
      title: Text('Work'),
      content: Text('Add Work'),
    ),
    const Step(
      title: Text('Places'),
      content: Text('Saved Places'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stepper(
          steps: _step,
          currentStep: _currentStep,
          onStepContinue: () {
            setState(() {
              if (_currentStep < _step.length - 1) {
                _currentStep++;
              }
            });
          },
        ),
      ],
    );
  }
}
