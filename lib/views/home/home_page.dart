import 'package:example_app/constants.dart';
import 'package:example_app/views/home/components/description_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetConstants.kBookReading),
          const SizedBox(height: 65),
          const DescriptionView(),
        ],
      ),
    );
  }
}
