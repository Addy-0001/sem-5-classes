import 'package:flutter/material.dart';

class AboutScreenView extends StatefulWidget {
  const AboutScreenView({super.key});

  @override
  State<AboutScreenView> createState() => _AboutScreenViewState();
}

class _AboutScreenViewState extends State<AboutScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('About us'),);
  }
}