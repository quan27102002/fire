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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCzyiogm5r0hQ45dWPnMe9GSnR7KES_ySU',
    appId: '1:478972508926:web:f0ded211cc27cfab4803af',
    messagingSenderId: '478972508926',
    projectId: 'firev2-c93f1',
    authDomain: 'firev2-c93f1.firebaseapp.com',
    storageBucket: 'firev2-c93f1.appspot.com',
    measurementId: 'G-D1KX5YFRQP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArw0iw55v2ozWWamhSKVkP8bWxDcT2Csw',
    appId: '1:478972508926:android:b19913a7a5319ae94803af',
    messagingSenderId: '478972508926',
    projectId: 'firev2-c93f1',
    storageBucket: 'firev2-c93f1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSXi3UmOneicZRHNlVC-VgkcSY5cR_A_A',
    appId: '1:478972508926:ios:39f1e4402929c4c74803af',
    messagingSenderId: '478972508926',
    projectId: 'firev2-c93f1',
    storageBucket: 'firev2-c93f1.appspot.com',
    iosBundleId: 'com.example.flutterApplication2',
  );
}
