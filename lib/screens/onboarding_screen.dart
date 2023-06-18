import 'package:flutter/material.dart';

import '../models/onboard_model.dart';
import '../widgets/onboard_item.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = '/onboarding-screen';
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Onboard> _screenDetails = [
    Onboard(
      image: 'assets/images/onboard1.png',
      subtitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae aliquam at vehicula vitae rhoncus montes. Sed dapibus vitae.',
      title: 'Riding Is Fun',
    ),
    Onboard(
      image: 'assets/images/onboard2.png',
      subtitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae aliquam at vehicula vitae rhoncus montes. Sed dapibus vitae.',
      title: 'Tracking Is Sure',
    ),
    Onboard(
      image: 'assets/images/onboard3.png',
      subtitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae aliquam at vehicula vitae rhoncus montes. Sed dapibus vitae.',
      title: 'Bonuses Guaranteed',
    ),
  ];

  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      controller: _pageController,
      itemCount: _screenDetails.length,
      itemBuilder: (context, index) => OnboardItem(
        imageUrl: _screenDetails[index].image,
        title: _screenDetails[index].title,
        subtitle: _screenDetails[index].subtitle,
        controller: _pageController,
        screens: _screenDetails,
      ),
    ));
  }
}
