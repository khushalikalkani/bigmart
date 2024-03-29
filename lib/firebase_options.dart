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
    apiKey: 'AIzaSyBDE4fr0J2nTKFiWbn8vGyFynaRe-l1z3o',
    appId: '1:842106068006:web:1900975dace646de995ae7',
    messagingSenderId: '842106068006',
    projectId: 'bigmart-5a646',
    authDomain: 'bigmart-5a646.firebaseapp.com',
    storageBucket: 'bigmart-5a646.appspot.com',
    measurementId: 'G-63TRLFPJ97',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBljLuvj72bJncJNqZcNS8dJDJhbedbLhU',
    appId: '1:842106068006:android:3ade173d921c28f6995ae7',
    messagingSenderId: '842106068006',
    projectId: 'bigmart-5a646',
    storageBucket: 'bigmart-5a646.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUdZgOAqj7dhAxX6s-dE0deaKFGsGmuS4',
    appId: '1:842106068006:ios:57ed8b18abb0c7b4995ae7',
    messagingSenderId: '842106068006',
    projectId: 'bigmart-5a646',
    storageBucket: 'bigmart-5a646.appspot.com',
    iosBundleId: 'com.example.bigmart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAUdZgOAqj7dhAxX6s-dE0deaKFGsGmuS4',
    appId: '1:842106068006:ios:e39263ca88e1df5c995ae7',
    messagingSenderId: '842106068006',
    projectId: 'bigmart-5a646',
    storageBucket: 'bigmart-5a646.appspot.com',
    iosBundleId: 'com.example.bigmart.RunnerTests',
  );
}
