import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/constants.dart';

class PageTitleView extends StatelessWidget {
  const PageTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 12.0,
      ),
      child: Text(
        "Search a Book",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: ColorConstants.kBlue,
        ),
      ),
    );
  }
}
