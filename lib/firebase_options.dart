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
    apiKey: 'AIzaSyBq1neS-seaCbFSDGuae6l-Nw0Qt12j0GM',
    appId: '1:281946284895:web:f44bee266fec25266c4cea',
    messagingSenderId: '281946284895',
    projectId: 'foundationapp-92fe3',
    authDomain: 'foundationapp-92fe3.firebaseapp.com',
    storageBucket: 'foundationapp-92fe3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2Xar8fpVcP2myGDKeXCpE0IMFjnK8gJw',
    appId: '1:281946284895:android:febc122d8056527c6c4cea',
    messagingSenderId: '281946284895',
    projectId: 'foundationapp-92fe3',
    storageBucket: 'foundationapp-92fe3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNZLVTwwWwii4-daXwMdu6UKfD6-upirc',
    appId: '1:281946284895:ios:379978d1b0fbbb4f6c4cea',
    messagingSenderId: '281946284895',
    projectId: 'foundationapp-92fe3',
    storageBucket: 'foundationapp-92fe3.appspot.com',
    iosClientId: '281946284895-6n1juocseddrs8apek0ljmv430ad7h34.apps.googleusercontent.com',
    iosBundleId: 'com.example.foundationapp',
  );
}
