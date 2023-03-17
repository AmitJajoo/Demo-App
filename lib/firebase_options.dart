// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDssFOuzW_wpK_ftFSQbPXK-tOxtRGXQwI',
    appId: '1:157627197080:web:9f888abcd02455d4e492ed',
    messagingSenderId: '157627197080',
    projectId: 'appday-611d0',
    authDomain: 'appday-611d0.firebaseapp.com',
    storageBucket: 'appday-611d0.appspot.com',
    measurementId: 'G-HG5B2H61SV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDx-P_YbNUI0buk3shLGwjmBeoB54o95jE',
    appId: '1:157627197080:android:85483b9e02693b5be492ed',
    messagingSenderId: '157627197080',
    projectId: 'appday-611d0',
    storageBucket: 'appday-611d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6I8hW3fA7ZPAXnijEJ0JVx32hiPCjDWs',
    appId: '1:157627197080:ios:8e99863ef2ec19f1e492ed',
    messagingSenderId: '157627197080',
    projectId: 'appday-611d0',
    storageBucket: 'appday-611d0.appspot.com',
    iosClientId: '157627197080-9bv5hrpqrdq83sa2tmg24023r4i81kv3.apps.googleusercontent.com',
    iosBundleId: 'com.demo.demo1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6I8hW3fA7ZPAXnijEJ0JVx32hiPCjDWs',
    appId: '1:157627197080:ios:8e99863ef2ec19f1e492ed',
    messagingSenderId: '157627197080',
    projectId: 'appday-611d0',
    storageBucket: 'appday-611d0.appspot.com',
    iosClientId: '157627197080-9bv5hrpqrdq83sa2tmg24023r4i81kv3.apps.googleusercontent.com',
    iosBundleId: 'com.demo.demo1',
  );
}