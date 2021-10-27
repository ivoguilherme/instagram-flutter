import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Discovery',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/home': (_) => const HomePage(),
      },
    );
  }
}
