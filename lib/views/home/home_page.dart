import 'package:flutter/material.dart';
import 'package:flutter_rest_app_template/views/home/components/description_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/book_reading.png'),
          const SizedBox(height: 65),
          const DescriptionView(),
        ],
      ),
    );
  }
}
