// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAmJowP8dFhIPyxrc1qPnXH7KByirNDiXc',
    appId: '1:1097818019280:web:a51b66d2e35f1a808cd5d5',
    messagingSenderId: '1097818019280',
    projectId: 'food-delivery-flutter-919fd',
    authDomain: 'food-delivery-flutter-919fd.firebaseapp.com',
    storageBucket: 'food-delivery-flutter-919fd.firebasestorage.app',
    measurementId: 'G-K3Y11DHLX8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0Jp2__ED3Yxk3EZbb49xwZpbmwBsem3M',
    appId: '1:1097818019280:android:598257b2a9a8b5198cd5d5',
    messagingSenderId: '1097818019280',
    projectId: 'food-delivery-flutter-919fd',
    storageBucket: 'food-delivery-flutter-919fd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYQ3RgvaZ8jWend81ZGzU6VNT-GjXartQ',
    appId: '1:1097818019280:ios:971f4802d9cfdcb18cd5d5',
    messagingSenderId: '1097818019280',
    projectId: 'food-delivery-flutter-919fd',
    storageBucket: 'food-delivery-flutter-919fd.firebasestorage.app',
    iosBundleId: 'com.example.foodDel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYQ3RgvaZ8jWend81ZGzU6VNT-GjXartQ',
    appId: '1:1097818019280:ios:971f4802d9cfdcb18cd5d5',
    messagingSenderId: '1097818019280',
    projectId: 'food-delivery-flutter-919fd',
    storageBucket: 'food-delivery-flutter-919fd.firebasestorage.app',
    iosBundleId: 'com.example.foodDel',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAmJowP8dFhIPyxrc1qPnXH7KByirNDiXc',
    appId: '1:1097818019280:web:e6b123cf316fc0268cd5d5',
    messagingSenderId: '1097818019280',
    projectId: 'food-delivery-flutter-919fd',
    authDomain: 'food-delivery-flutter-919fd.firebaseapp.com',
    storageBucket: 'food-delivery-flutter-919fd.firebasestorage.app',
    measurementId: 'G-TWEG13KDP2',
  );
}
