import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  hintText: "Digite aqui seu email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Senha",
                  hintText: "Digite aqui sua senha",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: login,
                child: Text("Entrar"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    String email = emailController.text;
    String senha = passwordController.text;

    emailController.clear();
    passwordController.clear();
  }
}
