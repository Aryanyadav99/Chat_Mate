import 'package:chat_mat/features/auth/presentation/widgets/auth_button.dart';
import 'package:chat_mat/features/auth/presentation/widgets/auth_input_field.dart';
import 'package:chat_mat/features/auth/presentation/widgets/switch_prompt.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose(){
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
                    'Sign In',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                      color: Colors.white,
                    ),
                  ),
                ),
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
               AuthButton(text:"Login", onPressed: (){}),
                const SizedBox(height: 20),
                AuthSwitchPrompt(command: "Not having an account ?", destination: "Click to register", onTap: (){}),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
