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
    apiKey: 'AIzaSyAr5zya2cW4ma0T2KsaVdTbqwP-LSMvq_g',
    appId: '1:41545296369:web:6a93bdbbcb04a798c23c50',
    messagingSenderId: '41545296369',
    projectId: 'yougram--com',
    authDomain: 'yougram--com.firebaseapp.com',
    databaseURL: 'https://yougram--com-default-rtdb.firebaseio.com',
    storageBucket: 'yougram--com.appspot.com',
    measurementId: 'G-RWBVHYVZVH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFbJjsCZbIGeRTJE3YD5kjO8TD68RzeDA',
    appId: '1:41545296369:android:a5a9275c59d2bff5c23c50',
    messagingSenderId: '41545296369',
    projectId: 'yougram--com',
    databaseURL: 'https://yougram--com-default-rtdb.firebaseio.com',
    storageBucket: 'yougram--com.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkHeDYhe7DJdSOzaAkU4fQs79I0PsPCp8',
    appId: '1:41545296369:ios:0e2d8d0af69d60fac23c50',
    messagingSenderId: '41545296369',
    projectId: 'yougram--com',
    databaseURL: 'https://yougram--com-default-rtdb.firebaseio.com',
    storageBucket: 'yougram--com.appspot.com',
    iosClientId: '41545296369-5dd5a76mv9ffhkovoo1gclruu4ibif1h.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTesting',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkHeDYhe7DJdSOzaAkU4fQs79I0PsPCp8',
    appId: '1:41545296369:ios:0e2d8d0af69d60fac23c50',
    messagingSenderId: '41545296369',
    projectId: 'yougram--com',
    databaseURL: 'https://yougram--com-default-rtdb.firebaseio.com',
    storageBucket: 'yougram--com.appspot.com',
    iosClientId: '41545296369-5dd5a76mv9ffhkovoo1gclruu4ibif1h.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTesting',
  );
}
