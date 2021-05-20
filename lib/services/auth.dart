import 'package:firebase_auth/firebase_auth.dart';
import 'package:stealthzero/models/user.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on user
User _userFromFirebaseUser(FirebaseUser user) {
  return user != null ? User(uid: user.uid) : null;
}
//auth change user stream
Stream<User> get user{
  return _auth.onAuthStateChanged
    .map(_userFromFirebaseUser);
}
  //sign in anon
  /*Future signInAnon() async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;

    } catch(e){
       print(e.toString());
       return null;
    }
  }*/
  //sign in with email & password

  // register

  //sign out
 Future signOut() async{
   try{
     return await _auth.signOut();
   }catch(e){
     print(e.toString());
     return null;

   }

 }
}