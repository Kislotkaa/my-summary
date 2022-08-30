import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseLeftContent extends StatelessWidget {
  const BaseLeftContent({
    Key? key,
    required this.children,
    this.width = 200,
  }) : super(key: key);
  final List<Widget> children;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
