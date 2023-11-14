/// @Describe: 路由管理
///
/// @Author: LiWeNHuI
/// @Date: 2023/11/13

library router;

import 'package:flutter/material.dart';
import 'package:flutter_home/pages/pages.dart';

part 'route_option.dart';

class Routes {
  /// 启动图
  static String splash = '/splash';

  /// 主页面
  static String main = '/main';

  /// 路由管理
  static Map<String, WidgetBuilder> get routes => RouteOptions._options
      .map((_, __) => MapEntry<String, WidgetBuilder>(_, __.builder));

  /// 根路由
  static String get initialRoute => splash;
}
