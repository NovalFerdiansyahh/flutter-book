import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDMyJxqPRbt_cPVXZEEJWGP3_p2jK82deg",
            authDomain: "book-mart-aa276.firebaseapp.com",
            projectId: "book-mart-aa276",
            storageBucket: "book-mart-aa276.appspot.com",
            messagingSenderId: "710901229510",
            appId: "1:710901229510:web:ab8eca34b7447cc466f4c7",
            measurementId: "G-R5TK962LHE"));
  } else {
    await Firebase.initializeApp();
  }
}
