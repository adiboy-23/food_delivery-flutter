import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_del/pages/home_page.dart';
import 'package:food_del/services/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //uesr is logged in
            if (snapshot.hasData) {
              return const HomePage();
            }

            //uer us NOT logged in
            else {
              return const LoginOrRegister();
            }
          }),
    );
  }
}