import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'styles/themes/light_theme.dart';
import 'styles/themes/dark_theme.dart';
import 'providers/theme_provider.dart';
import 'screens/intro/onboarding_page.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KostIQ',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      home: const OnboardingPage(title: 'Onboarding'),
    );
  }
}
