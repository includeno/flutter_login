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
    apiKey: 'AIzaSyDiLdWfDgKfo63MOtdJrLzwAf9KUqbomwM',
    appId: '1:742909772106:web:fc3481d3c05c38bfa541b3',
    messagingSenderId: '742909772106',
    projectId: 'test-firebase-9a00d',
    authDomain: 'test-firebase-9a00d.firebaseapp.com',
    databaseURL: 'https://test-firebase-9a00d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-firebase-9a00d.appspot.com',
    measurementId: 'G-61Y33C8KG3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6ve48hx688zecpGFR68wUGX554mTeVjk',
    appId: '1:742909772106:android:73a0af0b616351d3a541b3',
    messagingSenderId: '742909772106',
    projectId: 'test-firebase-9a00d',
    databaseURL: 'https://test-firebase-9a00d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-firebase-9a00d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUQBpwybACpt0h2J7whNLOcBXTvZH8TFI',
    appId: '1:742909772106:ios:e91a4e4085ef623ea541b3',
    messagingSenderId: '742909772106',
    projectId: 'test-firebase-9a00d',
    databaseURL: 'https://test-firebase-9a00d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-firebase-9a00d.appspot.com',
    iosBundleId: 'com.example.demo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUQBpwybACpt0h2J7whNLOcBXTvZH8TFI',
    appId: '1:742909772106:ios:e91a4e4085ef623ea541b3',
    messagingSenderId: '742909772106',
    projectId: 'test-firebase-9a00d',
    databaseURL: 'https://test-firebase-9a00d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'test-firebase-9a00d.appspot.com',
    iosBundleId: 'com.example.demo',
  );
}
