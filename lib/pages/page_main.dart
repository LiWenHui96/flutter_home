import 'package:flutter/material.dart';

/// @Describe: 主界面
///
/// @Author: LiWeNHuI
/// @Date: 2023/11/13

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Home'),
      ),
    );
  }
}
