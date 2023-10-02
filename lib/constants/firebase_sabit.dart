import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

UserMailControl() {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    // Name, email address, and profile photo URL
    final name = user.displayName;
    final email = user.email;
    final photoUrl = user.photoURL;

    // Check if user's email is verified
    final emailVerified = user.emailVerified;

    // The user's ID, unique to the Firebase project. Do NOT use this value to
    // authenticate with your backend server, if you have one. Use
    // User.getIdToken() ins
    // tead. 

    final uid = user.uid;
    return Text(email.toString());
  } else {
    return const Text("Swapla Hesabı");
  }
}

UserMailControl_profile() {
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    // Name, email address, and profile photo URL
    final name = user.displayName;
    final email = user.email;
    final photoUrl = user.photoURL;

    // Check if user's email is verified
    final emailVerified = user.emailVerified;

    // The user's ID, unique to the Firebase project. Do NOT use this value to
    // authenticate with your backend server, if you have one. Use
    // User.getIdToken() ins
    // tead.

    final uid = user.uid;
    return email;
  } else {
    return "Swapla Hesabı";
  }
}
