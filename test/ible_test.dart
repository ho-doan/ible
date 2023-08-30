import 'package:flutter_test/flutter_test.dart';
import 'package:ible/ible.dart';
import 'package:ible/ible_platform_interface.dart';
import 'package:ible/ible_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIblePlatform
    with MockPlatformInterfaceMixin
    implements IblePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final IblePlatform initialPlatform = IblePlatform.instance;

  test('$MethodChannelIble is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIble>());
  });

  test('getPlatformVersion', () async {
    Ible iblePlugin = Ible();
    MockIblePlatform fakePlatform = MockIblePlatform();
    IblePlatform.instance = fakePlatform;

    expect(await iblePlugin.getPlatformVersion(), '42');
  });
}
