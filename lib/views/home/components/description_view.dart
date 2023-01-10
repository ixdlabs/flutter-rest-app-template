import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DescriptionView extends ConsumerWidget {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Text(
          "Books under the spotlight",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        const SizedBox(height: 6),
        const Text(
          "We help you find the perfect selection!",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
            onPressed: () => handleSearch(context, ref),
            child: const Text("Search"))
      ],
    );
  }

  Future<void> handleSearch(BuildContext context, WidgetRef ref) async {}
}
