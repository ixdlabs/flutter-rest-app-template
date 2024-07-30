import 'package:example_app/constants.dart';
import 'package:flutter/material.dart';

class PageTitleView extends StatelessWidget {
  const PageTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 25.0,
        horizontal: 12.0,
      ),
      child: Text(
        'SearchBook',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: ColorConstants.kPrimary,
        ),
      ),
    );
  }
}
