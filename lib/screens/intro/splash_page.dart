import 'package:flutter/material.dart';
import 'package:manajemen_kost/screens/intro/onboarding_page.dart';
import 'package:manajemen_kost/utils/navigation_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      NavigationHelper.push(
          context, const OnboardingPage(title: 'Flutter Demo Home Page'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(size: 80),
            SizedBox(height: 20),
            Text("Welcome to KostIQ", style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
