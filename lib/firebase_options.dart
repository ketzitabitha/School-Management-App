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
    apiKey: 'AIzaSyAdx_JcgvR4zOrRANQVDLHNZIAnqu4Q0kQ',
    appId: '1:258223084257:web:47af87fd7f4b9d4b489da0',
    messagingSenderId: '258223084257',
    projectId: 'kaviyarasi-management-project',
    authDomain: 'kaviyarasi-management-project.firebaseapp.com',
    storageBucket: 'kaviyarasi-management-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsdN4laBqDElHHOIlD-BLtgYT1fjwZZm4',
    appId: '1:258223084257:android:4f8e79e8d39131f5489da0',
    messagingSenderId: '258223084257',
    projectId: 'kaviyarasi-management-project',
    storageBucket: 'kaviyarasi-management-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfaKKQPHpWdu-qlUeNw6Gd8yWqG7uBnV0',
    appId: '1:258223084257:ios:423e0a884859a24a489da0',
    messagingSenderId: '258223084257',
    projectId: 'kaviyarasi-management-project',
    storageBucket: 'kaviyarasi-management-project.appspot.com',
    iosClientId: '258223084257-fo3cap7v2tqkj7b0ho8jnt8uhkoevmid.apps.googleusercontent.com',
    iosBundleId: 'com.example.management',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDfaKKQPHpWdu-qlUeNw6Gd8yWqG7uBnV0',
    appId: '1:258223084257:ios:423e0a884859a24a489da0',
    messagingSenderId: '258223084257',
    projectId: 'kaviyarasi-management-project',
    storageBucket: 'kaviyarasi-management-project.appspot.com',
    iosClientId: '258223084257-fo3cap7v2tqkj7b0ho8jnt8uhkoevmid.apps.googleusercontent.com',
    iosBundleId: 'com.example.management',
  );
}