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
    apiKey: 'AIzaSyB8hs66csi1FDzFPPMraLQQz_7FqYaxDtQ',
    appId: '1:701068009093:web:48451994f5ce8f78a793ec',
    messagingSenderId: '701068009093',
    projectId: 'test-app-d12',
    authDomain: 'test-app-d12.firebaseapp.com',
    storageBucket: 'test-app-d12.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0QJlpZE0dGPgOHYqa7Z6LweFtwL7EYdY',
    appId: '1:701068009093:android:43e5d92c580e1558a793ec',
    messagingSenderId: '701068009093',
    projectId: 'test-app-d12',
    storageBucket: 'test-app-d12.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAI9YR063Qp2SW6IEnDtffNwKx2RX5yrWE',
    appId: '1:701068009093:ios:da39d5e8504a3825a793ec',
    messagingSenderId: '701068009093',
    projectId: 'test-app-d12',
    storageBucket: 'test-app-d12.appspot.com',
    iosClientId: '701068009093-a8jk2alf1tmmtnvakit9mmpl79e2pmmi.apps.googleusercontent.com',
    iosBundleId: 'com.example.testapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAI9YR063Qp2SW6IEnDtffNwKx2RX5yrWE',
    appId: '1:701068009093:ios:28767c7454abab34a793ec',
    messagingSenderId: '701068009093',
    projectId: 'test-app-d12',
    storageBucket: 'test-app-d12.appspot.com',
    iosClientId: '701068009093-s5g6pujnk4qjdrjhbu5b8nboump0kl6b.apps.googleusercontent.com',
    iosBundleId: 'com.example.testapp.RunnerTests',
  );
}
