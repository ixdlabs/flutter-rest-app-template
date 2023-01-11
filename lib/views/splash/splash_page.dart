import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.kBlue,
      child: Container(
        padding: const EdgeInsets.only(right: 2),
        child: const Center(
          child: Text(
            "SearchBook",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: ColorConstants.kWhite),
          ),
        ),
      ),
    );
  }
}
