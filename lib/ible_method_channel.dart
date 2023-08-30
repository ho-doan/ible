import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ible_platform_interface.dart';

/// An implementation of [IblePlatform] that uses method channels.
class MethodChannelIble extends IblePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ible');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
