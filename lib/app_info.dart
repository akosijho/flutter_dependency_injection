import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class AppInfo{

  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  Future<String> deviceInfo() async {
    if(Platform.isAndroid){
      AndroidDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      return "${androidDeviceInfo.model}  ${androidDeviceInfo.manufacturer}";
    }

    if(Platform.isLinux){
      IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      return "${iosDeviceInfo.model}  ${iosDeviceInfo.systemVersion}";
    }

    if(Platform.isLinux){
      LinuxDeviceInfo linuxDeviceInfo = await deviceInfoPlugin.linuxInfo;
      return "${linuxDeviceInfo.variant}  ${linuxDeviceInfo.prettyName}";
    }

    return "Device Unsupported";
  }
}