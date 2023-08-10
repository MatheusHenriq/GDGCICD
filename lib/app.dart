import 'package:cdgphbapp/modules/homepage.dart';
import 'package:flutter/material.dart';

class CdgApp extends MaterialApp {
  CdgApp({super.key})
      : super(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Homepage(title: "GDG Parnaíba"),
        );
}
