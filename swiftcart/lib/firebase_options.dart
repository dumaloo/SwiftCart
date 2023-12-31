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
    apiKey: 'AIzaSyDlFSgya45TMxXGgsiZxljzuLU631-0nGI',
    appId: '1:162983444969:web:cc8ddcb8088f1dda848b78',
    messagingSenderId: '162983444969',
    projectId: 'epass-auth',
    authDomain: 'epass-auth.firebaseapp.com',
    storageBucket: 'epass-auth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZWcOSxDMYiR-wbd1ZFvJnOh41qaYGHDc',
    appId: '1:162983444969:android:ce11c5c0d24dced4848b78',
    messagingSenderId: '162983444969',
    projectId: 'epass-auth',
    storageBucket: 'epass-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfnYEL2xKjEPViFL1QXM8sVmtNB4WUzwg',
    appId: '1:162983444969:ios:aa21363400ead7fd848b78',
    messagingSenderId: '162983444969',
    projectId: 'epass-auth',
    storageBucket: 'epass-auth.appspot.com',
    iosBundleId: 'com.example.swiftcart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfnYEL2xKjEPViFL1QXM8sVmtNB4WUzwg',
    appId: '1:162983444969:ios:285120d1f37b526c848b78',
    messagingSenderId: '162983444969',
    projectId: 'epass-auth',
    storageBucket: 'epass-auth.appspot.com',
    iosBundleId: 'com.example.swiftcart.RunnerTests',
  );
}
