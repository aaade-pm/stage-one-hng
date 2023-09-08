import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubButton extends StatefulWidget {
  const GithubButton({super.key});

  @override
  State<GithubButton> createState() => _GithubButtonState();
}

class _GithubButtonState extends State<GithubButton> {
  final websiteUri = Uri.parse('https://github.com//aaade-pm');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: () => setState(() {
            launchUrl(
              websiteUri,
              mode: LaunchMode.inAppWebView,
            );
          }),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[800],
            elevation: 5,
            shadowColor: Colors.white,
          ),
          child: const Text(
            'Open Github',
          ),
        ),
      ),
    );
  }
}
