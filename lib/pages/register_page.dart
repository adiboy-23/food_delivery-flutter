import 'package:flutter/material.dart';
import 'package:food_del/components/my_button.dart';
import 'package:food_del/components/my_textfield.dart';
import 'package:food_del/services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController ConfirmPasswordController =
      TextEditingController();

  void register() async {
    //get auth service
    // ignore: no_leading_underscores_for_local_identifiers
    final _authService = AuthService();

    //chek if password match -> create uer
    if (passwordController.text == ConfirmPasswordController.text) {
      try {
        await _authService.signInWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }

    //if passwords don't match -> show error
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),

              //message, app slogan
              Text(
                "Let's create an account for you",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              //email textfield
              MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obsureText: false),

              const SizedBox(height: 10),

              //password textfield
              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obsureText: true),

              const SizedBox(height: 10),

              //confirm password textfield
              MyTextField(
                  controller: ConfirmPasswordController,
                  hintText: "Confirm password",
                  obsureText: true),

              const SizedBox(height: 25),
              //sign up button
              MyButton(
                text: "Sign Up",
                onTap: register,
              ),

              const SizedBox(height: 25),

              //Already have an account? Login here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
