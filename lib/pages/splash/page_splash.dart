import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_home/router/router.dart';

/// @Describe: 启动图
///
/// @Author: LiWeNHuI
/// @Date: 2023/11/14

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer _timer;

  int _time = 3;

  FlutterLogoStyle _style = FlutterLogoStyle.markOnly;

  @override
  void initState() {
    _startTimer();

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FlutterLogo(size: 160, style: _style)));
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      if (_time == 0) {
        Navigator.pushReplacementNamed(context, Routes.main);
      } else {
        if (_time == 3) setState(() => _style = FlutterLogoStyle.stacked);
        _time--;
      }
    });
  }
}
