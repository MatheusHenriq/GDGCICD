import 'package:cdgphbapp/utils/app_images.dart';
import 'package:cdgphbapp/utils/social_media_enum.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "GDG Parnaíba"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  foregroundImage: AssetImage(AppImages.meImage),
                  radius: 64,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse(SocialMedia.matheus_linkedin.getUrl),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: const Text(
                'Linkedin',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse(SocialMedia.matheus_instagram.getUrl),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: const Text(
                'Instagram',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  foregroundImage: AssetImage(AppImages.obiImage),
                  radius: 64,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse(SocialMedia.obi_linkedin.getUrl),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: const Text(
                'Linkedin',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse(SocialMedia.obi_instagram.getUrl),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: const Text(
                'Instagram',
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
