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
    apiKey: 'AIzaSyCG7axhw7w0KVH9dY_DN-3DKTD-0tDfk-E',
    appId: '1:358935145176:web:7e54442cfa64243a2945ad',
    messagingSenderId: '358935145176',
    projectId: 'post-app-001',
    authDomain: 'post-app-001.firebaseapp.com',
    databaseURL: 'https://post-app-001-default-rtdb.firebaseio.com',
    storageBucket: 'post-app-001.appspot.com',
    measurementId: 'G-DQ1FYHTRQS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQ1MFLL35l5k_jtqpKFXPnIf7L_24iQOQ',
    appId: '1:358935145176:android:baa04e52fb5aa1702945ad',
    messagingSenderId: '358935145176',
    projectId: 'post-app-001',
    databaseURL: 'https://post-app-001-default-rtdb.firebaseio.com',
    storageBucket: 'post-app-001.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAw1bJItiwzgUwxrFCHXBRg75EuXXDHsS4',
    appId: '1:358935145176:ios:e70d601a0ac29cbd2945ad',
    messagingSenderId: '358935145176',
    projectId: 'post-app-001',
    databaseURL: 'https://post-app-001-default-rtdb.firebaseio.com',
    storageBucket: 'post-app-001.appspot.com',
    iosBundleId: 'uz.abduqodirov.learnPushNotifcation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAw1bJItiwzgUwxrFCHXBRg75EuXXDHsS4',
    appId: '1:358935145176:ios:9a63e9a6a5ac62ac2945ad',
    messagingSenderId: '358935145176',
    projectId: 'post-app-001',
    databaseURL: 'https://post-app-001-default-rtdb.firebaseio.com',
    storageBucket: 'post-app-001.appspot.com',
    iosBundleId: 'uz.abduqodirov.learnPushNotifcation.RunnerTests',
  );
}
