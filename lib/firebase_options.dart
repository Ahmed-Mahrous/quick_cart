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
    apiKey: 'AIzaSyAOKO7MHnQTWtPNygJ05THh1PoCzNMrdI4',
    appId: '1:969089339160:web:9b3de3f4abcd3f1774d86d',
    messagingSenderId: '969089339160',
    projectId: 'quickcart-9a5b0',
    authDomain: 'quickcart-9a5b0.firebaseapp.com',
    storageBucket: 'quickcart-9a5b0.appspot.com',
    measurementId: 'G-WHXYETRS02',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3JCOtvyMh4xuEVWo1FhCr9HtPc6zgioY',
    appId: '1:969089339160:android:88921d3825f7f06174d86d',
    messagingSenderId: '969089339160',
    projectId: 'quickcart-9a5b0',
    storageBucket: 'quickcart-9a5b0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvwWNtf-91uVnVuZLxn2ZGx0xL4NI18yo',
    appId: '1:969089339160:ios:3e4d7529ef3992c074d86d',
    messagingSenderId: '969089339160',
    projectId: 'quickcart-9a5b0',
    storageBucket: 'quickcart-9a5b0.appspot.com',
    iosBundleId: 'com.example.quickCart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvwWNtf-91uVnVuZLxn2ZGx0xL4NI18yo',
    appId: '1:969089339160:ios:3e4d7529ef3992c074d86d',
    messagingSenderId: '969089339160',
    projectId: 'quickcart-9a5b0',
    storageBucket: 'quickcart-9a5b0.appspot.com',
    iosBundleId: 'com.example.quickCart',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAOKO7MHnQTWtPNygJ05THh1PoCzNMrdI4',
    appId: '1:969089339160:web:9867a0f51cfd0fdb74d86d',
    messagingSenderId: '969089339160',
    projectId: 'quickcart-9a5b0',
    authDomain: 'quickcart-9a5b0.firebaseapp.com',
    storageBucket: 'quickcart-9a5b0.appspot.com',
    measurementId: 'G-C30R34YXS6',
  );
}
