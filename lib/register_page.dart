import 'package:flutter/material.dart';

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
                const SizedBox(height: 40),
                _buildTextInput('Username', Icons.person, _usernameController),
                const SizedBox(height: 20),
                _buildTextInput('Email', Icons.mail, _emailController),
                const SizedBox(height: 20),
                _buildTextInput(
                  'Password',
                  Icons.lock,
                  _passwordController,
                  isPassword: true,
                ),
                const SizedBox(height: 30),
                _buildRegisterButton(),
                const SizedBox(height: 20),
                _buildLoginPrompt(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextInput(
      String hint,
      IconData icon,
      TextEditingController controller, {
        bool isPassword = false,
      }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey[400]),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[500]),
        filled: true,
        fillColor: Colors.grey[900],
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFF00BFA6), width: 1.5),
        ),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return ElevatedButton(
      onPressed: () {
        _showInputValue();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00BFA6),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        elevation: 4,
      ),
      child: const Text(
        "Register",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildLoginPrompt() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: TextStyle(color: Colors.grey[400]),
        ),
        GestureDetector(
          onTap: () {
            // Navigate to login page
          },
          child: const Text(
            "Login",
            style: TextStyle(
              color: Color(0xFF00BFA6),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

}
