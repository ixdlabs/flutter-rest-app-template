import 'package:flutte_rest_app_template/utils/theme/extension.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({required this.builder, super.key});
  final Widget Function(BoxDecoration decoration) builder;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colorScheme.surface,
      highlightColor: Colors.grey.shade400,
      child: builder(
        BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
