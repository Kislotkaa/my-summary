import 'package:flutter/material.dart';

import 'base_text.dart';
import 'base_title.dart';

class BaseItemLeftContent extends StatelessWidget {
  const BaseItemLeftContent({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);
  final String? title;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == null
            ? SizedBox()
            : BaseTitle(
                title!,
                inActive: true,
                fontSize: 14,
              ),
        text == null
            ? SizedBox()
            : BaseText(
                text!,
                small: true,
                inActive: true,
              ),
      ],
    );
  }
}
