import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final double height;
  final double width;
  final Function onTap;
  final String link;

  final EdgeInsets defaultPadding = const EdgeInsets.all(kDefaultMargin);

  const CustomContainer(
      {this.child,
      this.padding,
      this.margin,
      this.color,
      this.height,
      this.width,
      this.onTap,
      this.link});

  @override
  Widget build(BuildContext context) {
    

    return Material(
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      color: color ?? Colors.white,
      child: InkWell(
        onTap: onTap != null ? onTap : (link != null ? () => _launchURL(link) : null),
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        child: Container(
          height: height,
          width: width,
          margin: margin,
          padding: padding ?? defaultPadding,
          child: child,
        ),
      ),
    );
  }

  _launchURL(String url) async {
    print('1: $url');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
