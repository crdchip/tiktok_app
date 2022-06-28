import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> googleSignIn() async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  if (googleUser != null) {
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    if (googleAuth.idToken != null && googleAuth.accessToken != null) {
      final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      final UserCredential user = await _auth.signInWithCredential(credential);

      return user;
    } else {
      throw StateError('Missing Google Auth Token');
    }
  } else
    throw StateError('Sign in Aborted');
}
