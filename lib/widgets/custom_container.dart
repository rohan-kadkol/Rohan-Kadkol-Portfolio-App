import 'package:flutter/material.dart';

import '../constants.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;

  final EdgeInsets defaultPadding = const EdgeInsets.all(kDefaultMargin);

  const CustomContainer({this.child, this.padding, this.margin, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding ?? defaultPadding,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      child: child,
    );
  }
}
