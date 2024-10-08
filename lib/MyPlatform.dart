import 'dart:io';

/// 系统平台
class MyPlatform_c {
  MyPlatform_c._();

  static const bool isWeb = false;

  @pragma("vm:platform-const")
  static final isAndroid = (false == isWeb && Platform.isAndroid);
  @pragma("vm:platform-const")
  static final bool isIOS = (false == isWeb && Platform.isIOS);
  @pragma("vm:platform-const")
  static final bool isMobile = (isAndroid || isIOS);

  @pragma("vm:platform-const")
  static final bool isLinux = (false == isWeb && Platform.isLinux);
  @pragma("vm:platform-const")
  static final bool isMacOS = (false == isWeb && Platform.isMacOS);
  @pragma("vm:platform-const")
  static final bool isWindows = (false == isWeb && Platform.isWindows);
  @pragma("vm:platform-const")
  static final bool isDesktop = (isWindows || isMacOS || isLinux);

  @pragma("vm:platform-const")
  static final bool isFuchsia = (false == isWeb && Platform.isFuchsia);

  static const String AndroidStr = "android",
      IosStr = "ios",
      WebStr = "web",
      WindowsStr = "windows",
      LinuxStr = "linux",
      MacosStr = "macos";

  static final String currentPlatformName = () {
    if (MyPlatform_c.isWeb) {
      return MyPlatform_c.WebStr;
    } else if (MyPlatform_c.isAndroid) {
      return MyPlatform_c.AndroidStr;
    } else if (MyPlatform_c.isIOS) {
      return MyPlatform_c.IosStr;
    } else if (MyPlatform_c.isWindows) {
      return MyPlatform_c.WindowsStr;
    } else if (MyPlatform_c.isLinux) {
      return MyPlatform_c.LinuxStr;
    } else if (MyPlatform_c.isMacOS) {
      return MyPlatform_c.MacosStr;
    } else {
      // 错误
      return "";
    }
  }();

  static final String currentPlatformName_CN = () {
    if (MyPlatform_c.isWeb) {
      return "Web";
    } else if (MyPlatform_c.isAndroid) {
      return "安卓";
    } else if (MyPlatform_c.isIOS) {
      return "IPhone";
    } else if (MyPlatform_c.isWindows) {
      return "Windows";
    } else if (MyPlatform_c.isLinux) {
      return "Linux";
    } else if (MyPlatform_c.isMacOS) {
      return "Mac";
    } else {
      // 错误
      return "";
    }
  }();
}
