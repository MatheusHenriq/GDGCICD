import 'package:cdgphbapp/modules/widgets/image_card.dart';
import 'package:cdgphbapp/modules/widgets/launch_url_button.dart';
import 'package:cdgphbapp/utils/app_images.dart';
import 'package:cdgphbapp/utils/social_media_enum.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key, required this.title});

  final String title;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageCard(
              image: AppImages.meImage,
            ),
            SizedBox(
              height: 12,
            ),
            LaunchUrlButton(
              label: 'Linkedin',
              socialMedia: SocialMedia.matheus_linkedin,
            ),
            LaunchUrlButton(
              label: 'Instagram',
              socialMedia: SocialMedia.matheus_instagram,
            ),
            SizedBox(
              height: 24,
            ),
            ImageCard(
              image: AppImages.obiImage,
            ),
            SizedBox(
              height: 12,
            ),
            LaunchUrlButton(
              label: 'Linkedin',
              socialMedia: SocialMedia.obi_linkedin,
            ),
            LaunchUrlButton(
              label: 'Instagram',
              socialMedia: SocialMedia.obi_instagram,
            ),
          ],
        ),
      ),
    );
  }
}
