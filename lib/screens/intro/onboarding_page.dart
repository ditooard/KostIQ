import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/theme_provider.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
        actions: [
          Switch(
            value: isDarkMode,
            onChanged: (val) => themeProvider.toggleTheme(val),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to KostIQ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
