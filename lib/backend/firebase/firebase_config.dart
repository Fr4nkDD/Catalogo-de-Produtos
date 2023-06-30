import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCy-AA2yuQgkPDdIN6rGF69XQosZ80ZTyk",
            authDomain: "catalogo-2-4a8f9.firebaseapp.com",
            projectId: "catalogo-2-4a8f9",
            storageBucket: "catalogo-2-4a8f9.appspot.com",
            messagingSenderId: "1030717843057",
            appId: "1:1030717843057:web:6633a325e422f8fb3d1dd0",
            measurementId: "G-6ZJ22CL5B6"));
  } else {
    await Firebase.initializeApp();
  }
}
