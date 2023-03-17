import 'dart:convert';

import 'package:demo1/app/data/dummy_task_model.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get/get.dart';

class RemoteConfigService extends GetxService {

  static Future<List<DummyTask>> init() async {
    final  FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval:const Duration(seconds: 10),
    ));
    await remoteConfig.fetchAndActivate();
    final jsonString = remoteConfig.getString('dummy_tasks');
    List decoded = json.decode(jsonString);
    return decoded.map((e) => DummyTask.fromJson(e)).toList();
  }

  RemoteConfigService._();

  String get dummyTask =>  FirebaseRemoteConfig.instance.getString('dummy_tasks');
}