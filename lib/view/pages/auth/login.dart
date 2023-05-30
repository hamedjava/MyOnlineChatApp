import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_chat/view/components/form/custom_textformfield.dart';
import 'package:my_chat/model/globals/constant.dart' as constant;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.string(
                constant.svgString,
                width: 100,
                height: 100,
              ),
            ),
            CustomTextField(
                title: "Username",
                controller: usernameController,
                borderColor: Colors.blueAccent,
                errorColor: Colors.red,
                helperStyleColor: Colors.blueAccent,
                postFixIcon:
                    const Icon(Icons.account_circle, color: Colors.red),
                validator: (context) {
                  return null;
                }),
            CustomTextField(
                title: "Password",
                controller: passwordController,
                borderColor: Colors.blueAccent,
                errorColor: Colors.red,
                helperStyleColor: Colors.blueAccent,
                postFixIcon:
                    const Icon(Icons.account_circle, color: Colors.red),
                validator: (context) {
                  return null;
                }),
          ],
        ),
      ),
    );
  }
}
