import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FireAuth {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void signUp(String name, String phone, String email, String pass,
      Function onSuccess) {
    _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: pass)
        .then((value) => (user) {
              _createUser(user.uid, name, phone, onSuccess);
              print(user);
            })
        .catchError((err) {
      //TODO
    });
  }

  _createUser(String userID, String name, String phone, Function onSuccess) {
    var user = {
      "name": name,
      "phone": phone,
    };
    var ref = FirebaseDatabase.instance.reference().child("user");
    ref.child(userID).set(user).then((user) {
      //success
    }).catchError((e) {
      //TODO
    });
  }
}
