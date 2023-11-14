/// @Describe: 路由选项
///
/// @Author: LiWeNHuI
/// @Date: 2023/11/13

part of router;

class RouteOptions {
  static Map<String, RouteOption> get _options {
    return <String, RouteOption>{
      Routes.splash: RouteOption((_) => const SplashPage()),
      Routes.main: RouteOption((_) => const MainPage()),
    };
  }
}

class RouteOption {
  RouteOption(this.builder);

  final WidgetBuilder builder;
}
