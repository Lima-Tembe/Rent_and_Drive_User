import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RentAndDriveFirebaseUser {
  RentAndDriveFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

RentAndDriveFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RentAndDriveFirebaseUser> rentAndDriveFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<RentAndDriveFirebaseUser>(
            (user) => currentUser = RentAndDriveFirebaseUser(user));
