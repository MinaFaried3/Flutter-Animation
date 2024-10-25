import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

enum AuthMode { signUp, login }

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.login;
  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  final _passwordController = TextEditingController();

  void _switchAuthMode() {
    if (_authMode == AuthMode.login) {
      setState(() {
        _authMode = AuthMode.signUp;
      });
    } else {
      setState(() {
        _authMode = AuthMode.login;
      });
    }
  }

  late AnimationController controller;
  late Animation<double> animation;
  @override
  initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation = Tween<double>(begin: 1, end: 0).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOutExpo));
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 8,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: _authMode == AuthMode.signUp ? 320 : 260,
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: "E-Mail"),
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        if (val!.isEmpty || !val.contains('@')) {
                          return "Invalid email!";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        _authData['password'] = val!;
                        if (kDebugMode) {
                          print(_authData['password']);
                        }
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Password"),
                      controller: _passwordController,
                      obscureText: true,
                      validator: (val) {
                        if (val!.isEmpty || val.length <= 5) {
                          return "Password is too short!";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        _authData['email'] = val!;
                        if (kDebugMode) {
                          print(_authData['email']);
                        }
                      },
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      constraints: BoxConstraints(
                        minHeight: _authMode == AuthMode.signUp ? 60 : 0,
                        maxHeight: _authMode == AuthMode.signUp ? 120 : 0,
                      ),
                      child: FadeTransition(
                        opacity: animation,
                        child: TextFormField(
                          enabled: _authMode == AuthMode.signUp,
                          decoration: const InputDecoration(
                              labelText: 'Confirm Password'),
                          obscureText: true,
                          validator: _authMode == AuthMode.signUp
                              ? (value) {
                                  if (value != _passwordController.text) {
                                    return 'Passwords do not match!';
                                  }
                                  return null;
                                }
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _submit,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor,
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryTextTheme.labelLarge!.color,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 8.0),
                        ),
                      ),
                      child: Text(
                          _authMode == AuthMode.login ? 'LOGIN' : 'SIGN UP'),
                    ),
                    TextButton(
                      onPressed: _switchAuthMode,
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      child: Text(
                          '${_authMode == AuthMode.login ? 'SIGN UP' : 'LOGIN'} INSTEAD'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState!.save();
    if (_authMode == AuthMode.login) {
      // Log user in
    } else {
      // Sign user up
    }
  }
}
