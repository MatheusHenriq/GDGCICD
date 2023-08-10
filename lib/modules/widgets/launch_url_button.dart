import 'package:cdgphbapp/utils/social_media_enum.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlButton extends StatelessWidget {
  final SocialMedia socialMedia;
  final String label;

  const LaunchUrlButton({super.key, required this.socialMedia, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await launchUrl(
          Uri.parse(socialMedia.getUrl),
          mode: LaunchMode.externalApplication,
        );
      },
      child: Text(
        label,
      ),
    );
  }
}
