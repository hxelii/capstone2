import 'package:flutter/material.dart';
import 'package:petpals/users/registration_page.dart';

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  String? _username, _email, _password, _confirmPassword;
  bool _showSuffixIcon_username = false;
  bool _showSuffixIcon_email = false;

  // Function to clear the username field
  void _clearUsername() {
    _usernameController.clear();
    setState(() {
      _showSuffixIcon_username = false;
    });
  }

  // Function to clear the email field
  void _clearEmail() {
    _emailController.clear();
    setState(() {
      _showSuffixIcon_email = false;
    });
  }

  // Function to toggle password visibility
  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  // Function to toggle confirm password visibility
  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  // Function to validate and save the form
  void _validateAndSaveForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      print('Username: $_username, Password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ... (rest of the code remains the same)

                    TextFormField(
                      controller: _usernameController,
                      onChanged: (userInput) {
                        if (userInput.isNotEmpty) {
                          setState(() {
                            _showSuffixIcon_username = true;
                          });
                        } else {
                          setState(() {
                            _showSuffixIcon_username = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: const OutlineInputBorder(),
                        hintText: 'Enter your username',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: const TextStyle(
                          color: Colors.grey, // change the color to grey
                          fontSize: 14,
                        ),
                        prefixIcon: const Icon(Icons.person),
                        suffixIcon: _showSuffixIcon_username
                            ? IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: _clearUsername,
                              )
                            : null,
                      ),
                      validator: (username) {
                        if (username == null || username.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      onSaved: (username) => _username = username ?? '',
                    ),

                    // ... (rest of the code remains the same)

                    TextFormField(
                      controller: _emailController,
                      onChanged: (email) {
                        if (email.isNotEmpty) {
                          setState(() {
                            _showSuffixIcon_email = true;
                          });
                        } else {
                          setState(() {
                            _showSuffixIcon_email = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: const OutlineInputBorder(),
                        hintText: 'Enter your email',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: const TextStyle(
                          color: Colors.grey, // change the color to grey
                          fontSize: 14,
                        ),
                        prefixIcon: const Icon(Icons.email),
                        suffixIcon: _showSuffixIcon_email
                            ? IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: _clearEmail,
                              )
                            : null,
                      ),
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onSaved: (email) => _email = email ?? '',
                    ),

                    // ... (rest of the code remains the same)

                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter password',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          onTap: _togglePasswordVisibility,
                          child: Icon(_obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      controller: _passwordController,
                      validator: (password) {
                        if (password!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (password) => _password = password!,
                    ),

                    // ... (rest of the code remains the same)

                    TextFormField(
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Confirm password',
                        hintText: 'Confirm your password',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          onTap: _toggleConfirmPasswordVisibility,
                          child: Icon(_obscureConfirmPassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      controller: _confirmPasswordController,
                      validator: (confirmPassword) {
                        if (confirmPassword!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (confirmPassword) =>
                          _confirmPassword = confirmPassword!,
                    ),

                    // ... (rest of the code remains the same)

                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _validateAndSaveForm,
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
