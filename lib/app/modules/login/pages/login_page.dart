import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vigilanciapolicial/app/modules/login/pages/login_controller.dart';
import 'package:vigilanciapolicial/app/services/AuthenticationService.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = "LoginPage"}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginController> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          TextButton(
            autofocus: true,
            clipBehavior: Clip.none,
            onPressed: controller.loginWithGoogle(),
            child: Text("Sign In"),
          )
        ],
      ),
    );
  }
}
