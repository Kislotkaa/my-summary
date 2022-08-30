import 'package:flutter/material.dart';

class BaseImageAvatar extends StatelessWidget {
  const BaseImageAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          'assets/images/myPhoto.jpg',
          height: 180,
          width: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
