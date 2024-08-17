// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform;
//
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (defaultTargetPlatform == TargetPlatform.android) {
//       return _android;
//     } else if (defaultTargetPlatform == TargetPlatform.iOS) {
//       return _ios;
//     } else {
//       throw UnsupportedError('DefaultFirebaseOptions are not supported for this platform.');
//     }
//   }
//
//   static const FirebaseOptions _android = FirebaseOptions(
//     apiKey: 'YOUR_ANDROID_API_KEY',
//     appId: 'YOUR_ANDROID_APP_ID',
//     messagingSenderId: 'YOUR_ANDROID_MESSAGING_SENDER_ID',
//     projectId: 'YOUR_PROJECT_ID',
//     storageBucket: 'YOUR_ANDROID_STORAGE_BUCKET', // Добавьте, если используете Storage
//   );
//
//   static const FirebaseOptions _ios = FirebaseOptions(
//     apiKey: 'YOUR_IOS_API_KEY',
//     appId: 'YOUR_IOS_APP_ID',
//     messagingSenderId: 'YOUR_IOS_MESSAGING_SENDER_ID', // Исправлено
//     projectId: 'YOUR_PROJECT_ID',
//     iosClientId: 'YOUR_IOS_CLIENT_ID', // Добавьте, если используете
//     iosBundleId: 'YOUR_IOS_BUNDLE_ID', // Добавьте, если используете
//     storageBucket: 'YOUR_IOS_STORAGE_BUCKET', // Добавьте, если используете Storage
//   );
// }
//
//
//
