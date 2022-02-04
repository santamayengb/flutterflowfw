import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FoodwifiRestaurantPartnerAppFirebaseUser {
  FoodwifiRestaurantPartnerAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FoodwifiRestaurantPartnerAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FoodwifiRestaurantPartnerAppFirebaseUser>
    foodwifiRestaurantPartnerAppFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FoodwifiRestaurantPartnerAppFirebaseUser>((user) =>
            currentUser = FoodwifiRestaurantPartnerAppFirebaseUser(user));
