import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ible_method_channel.dart';

abstract class IblePlatform extends PlatformInterface {
  /// Constructs a IblePlatform.
  IblePlatform() : super(token: _token);

  static final Object _token = Object();

  static IblePlatform _instance = MethodChannelIble();

  /// The default instance of [IblePlatform] to use.
  ///
  /// Defaults to [MethodChannelIble].
  static IblePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IblePlatform] when
  /// they register themselves.
  static set instance(IblePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
