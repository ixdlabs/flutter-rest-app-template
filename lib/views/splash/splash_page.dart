import 'package:example_app/constants.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.kPrimary,
      child: Container(
        padding: const EdgeInsets.only(right: 2),
        child: const Center(
          child: Text(
            'SearchBook',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
