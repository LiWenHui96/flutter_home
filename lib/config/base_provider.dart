import 'package:flutter/material.dart';

/// @Describe: Provider基类
///
/// @Author: LiWeNHuI
/// @Date: 2023/11/15

/// 基类 Provider
abstract class BaseProvider extends ChangeNotifier {
  /// 防止页面销毁后，异步任务才完成，导致报错
  bool disposed = false;

  @override
  void notifyListeners() {
    if (!disposed) super.notifyListeners();
  }

  @override
  void dispose() {
    disposed = true;

    super.dispose();
  }
}
