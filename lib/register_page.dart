import 'package:flutter/material.dart';

import 'features/auth/presentation/widgets/auth_button.dart';
import 'features/auth/presentation/widgets/auth_input_field.dart';
import 'features/auth/presentation/widgets/switch_prompt.dart';

class RegisterPageDemo extends StatefulWidget {
  const RegisterPageDemo({super.key});

  @override
  State<RegisterPageDemo> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPageDemo> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void _showInputValue(){
    String userName=_usernameController.text;
    String email=_emailController.text;
    String password=_passwordController.text;
    print("UserName : $userName - Email : $email -Password : -$password ");
  }
  @override
  void dispose(){
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey[900]!, Colors.black],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                AuthInputField(hint: 'Name',icon:  Icons.person, controller: _usernameController,isPassword: false),
                const SizedBox(height: 20),
                AuthInputField(hint: 'Email',icon:  Icons.mail, controller: _emailController,isPassword: false),
                const SizedBox(height: 20),
                AuthInputField(
                  hint: 'Password',
                  icon:Icons.lock,
                  controller: _passwordController,
                  isPassword: true,
                ),
                const SizedBox(height: 30),
                AuthButton(text:"Register", onPressed: (){}),
                const SizedBox(height: 20),
                AuthSwitchPrompt(command: "Already having an account ?", destination: "Click to login", onTap: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
