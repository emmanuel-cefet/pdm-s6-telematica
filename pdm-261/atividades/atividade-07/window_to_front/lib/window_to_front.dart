
import 'window_to_front_platform_interface.dart';

class WindowToFront {
  /*Future<String?> getPlatformVersion() {
    return WindowToFrontPlatform.instance.getPlatformVersion();
  }*/
  // Remove the getPlatformVersion() implementation and add the following
  static Future<void> activate() {
    return WindowToFrontPlatform.instance.activate();
  }
}
