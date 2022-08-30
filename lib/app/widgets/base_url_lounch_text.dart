import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BaseUrlLaunchText extends StatelessWidget {
  const BaseUrlLaunchText({
    Key? key,
    this.text,
    this.hideUrl,
    this.url,
  }) : super(key: key);
  final String? text;
  final String? hideUrl;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(style: Theme.of(context).textTheme.bodyText1, text: text),
          TextSpan(
            style: TextStyle(color: Colors.blue),
            text: hideUrl,
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                if (url == null) {
                  throw 'Could not launch $url';
                } else {
                  var uri = Uri.parse(url!);
                  await launchUrl(uri);
                }
              },
          ),
        ],
      ),
    );
  }
}
