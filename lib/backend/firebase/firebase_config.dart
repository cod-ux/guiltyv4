import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBjg87-ya7Err3gHYCX4mtnI8ONpVXKTvs",
            authDomain: "guiltyv3-6fc66.firebaseapp.com",
            projectId: "guiltyv3-6fc66",
            storageBucket: "guiltyv3-6fc66.appspot.com",
            messagingSenderId: "493172928791",
            appId: "1:493172928791:web:2a5a91e77bb6b076270752",
            measurementId: "G-QL0QECTYXR"));
  } else {
    await Firebase.initializeApp();
  }
}
