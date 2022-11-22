import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Auth{
  FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  Stream<User?> get authStateChanges=> _firebaseAuth.authStateChanges();
  Future<void> SignUp({required String email,required String password}) async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }
  Future<void> SignIn({required String email,required String password}) async{
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }
  Future<void> LogOut() async {
    _firebaseAuth.signOut();
  }
}