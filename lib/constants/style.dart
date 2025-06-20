import 'package:flutte_rest_app_template/utils/theme/app_theme_impl.dart';
import 'package:flutter/cupertino.dart';

const radius8 = BorderRadius.all(Radius.circular(8));
const radius16 = BorderRadius.all(Radius.circular(16));
const radiusFull = BorderRadius.all(Radius.circular(100));

const inactiveSwitchDecoration = BoxDecoration(
  color: AppTheme.inactiveSwitchBackground,
  borderRadius: BorderRadius.all(Radius.circular(100)),
);

const activeSwitchDecoration = BoxDecoration(
  color: AppTheme.primary,
  borderRadius: BorderRadius.all(Radius.circular(100)),
);

const horizontalPadding = EdgeInsets.symmetric(horizontal: 16);

const greenBorderedDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  border: Border(
    bottom: BorderSide(color: AppTheme.green),
    left: BorderSide(color: AppTheme.green),
    right: BorderSide(color: AppTheme.green),
    top: BorderSide(color: AppTheme.green),
  ),
);
