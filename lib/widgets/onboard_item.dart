import 'package:flutter/material.dart';
import 'package:p_rides/screens/sign_up/signup_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/styles.dart';
import '../models/onboard_model.dart';

class OnboardItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final PageController controller;
  final List<Onboard> screens;

  const OnboardItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.controller,
    required this.screens,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Image.asset(
            imageUrl,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: kHeaderText,
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 60,
          width: 352,
          child: Text(
            subtitle,
            textAlign: TextAlign.justify,
            style: kSubtitleText,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SmoothPageIndicator(
          controller: controller,
          count: screens.length,
        ),
        TextButton(
          onPressed: () => Navigator.pushReplacementNamed(
            context,
            SignUpScreen.routeName,
          ),
          child: const Text(
            'SKIP',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
