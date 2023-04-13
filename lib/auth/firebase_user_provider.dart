import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BookmartFirebaseUser {
  BookmartFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BookmartFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BookmartFirebaseUser> bookmartFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BookmartFirebaseUser>(
      (user) {
        currentUser = BookmartFirebaseUser(user);
        return currentUser!;
      },
    );
