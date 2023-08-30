
import 'ible_platform_interface.dart';

class Ible {
  Future<String?> getPlatformVersion() {
    return IblePlatform.instance.getPlatformVersion();
  }
}
