import 'package:flutter/material.dart';
import 'package:ikea/componetns/global-content.dart';
import 'package:ikea/theme/color.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Global_content(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 120.0, vertical: 0.0),
            child: Image.asset('images/logo.png'),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: 187,
            child: Text(
              'Creating a better everyday life for the many people.',
              style: TextStyle(
                  fontSize: 12.8,
                  fontWeight: FontWeight.w400,
                  color: ScreenText),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
