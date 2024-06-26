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
    apiKey: 'AIzaSyBbhxZrHkMI5GXRI2XZTJ6hQ4y4iEmtGTQ',
    appId: '1:792509259272:web:9020f2c1c67597ede43bbd',
    messagingSenderId: '792509259272',
    projectId: 'chatapp-5b747',
    authDomain: 'chatapp-5b747.firebaseapp.com',
    storageBucket: 'chatapp-5b747.appspot.com',
    measurementId: 'G-L6H9H6T9MZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_G6PjsCw0czjJSU0t2qrxlYZXsruoxwE',
    appId: '1:792509259272:android:0e2719917c6d5a90e43bbd',
    messagingSenderId: '792509259272',
    projectId: 'chatapp-5b747',
    storageBucket: 'chatapp-5b747.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDThGH-eKsaIstF8OR5f4WVDcZlwrEBfw',
    appId: '1:792509259272:ios:a26c82e01b0b1568e43bbd',
    messagingSenderId: '792509259272',
    projectId: 'chatapp-5b747',
    storageBucket: 'chatapp-5b747.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBDThGH-eKsaIstF8OR5f4WVDcZlwrEBfw',
    appId: '1:792509259272:ios:a26c82e01b0b1568e43bbd',
    messagingSenderId: '792509259272',
    projectId: 'chatapp-5b747',
    storageBucket: 'chatapp-5b747.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBbhxZrHkMI5GXRI2XZTJ6hQ4y4iEmtGTQ',
    appId: '1:792509259272:web:cdb38ab67adec2d6e43bbd',
    messagingSenderId: '792509259272',
    projectId: 'chatapp-5b747',
    authDomain: 'chatapp-5b747.firebaseapp.com',
    storageBucket: 'chatapp-5b747.appspot.com',
    measurementId: 'G-R872JZSXG6',
  );
}