// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditrack/Core/utils/app_colors.dart';
import 'package:meditrack/Features/Splash/presentation/Views/widgets/AnimatedTagLine.dart';
import 'package:meditrack/Features/Splash/presentation/Views/widgets/logo.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {
      GoRouter.of(context).go('/home'); // navigate to home without Return again
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // this container is for gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, Color(0xffB12882)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 120),
              LogoImage(),
              const SizedBox(height: 35),
              AnimatedTagline(text: "Your Health,Our Priority"),
            ],
          ),
        ),
      ),
    );
  }
}
