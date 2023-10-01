
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pawcare/api/apis.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String name = '';
  String age = '';
  bool loggedIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Column(
        children: [
          
          const Expanded(
            child: Column(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 100, 18, 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                  key: _formKey,
                  child: loggedIn == true
                      ? Column(
                          children: [
                                  
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: TextFormField(
                                key: const ValueKey('email'),
                                decoration:
                                    const InputDecoration(hintText: 'Enter your email'),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter a valid email';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) {
                                  setState(() {
                                    email = value!;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextFormField(
                                key: const ValueKey('password'),
                                decoration: const InputDecoration(
                                    hintText: 'Enter your Password'),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter a valid password';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) {
                                  setState(() {
                                    password = value!;
                                  });
                                },
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    APIs.signIn(email, password, context);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: const Text('Sign In'),
                                )
                                ),
                          ],
                        )
                      : Column(
                          children: [
                            TextFormField(
                              key: const ValueKey('name'),
                              decoration:
                                  const InputDecoration(hintText: 'First Name'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter a valid name';
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                setState(() {
                                  name = value!;
                                });
                              },
                            ),
                            TextFormField(
                              key: const ValueKey('age'),
                              decoration:
                                  const InputDecoration(hintText: 'Enter your Age'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter a valid age';
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                setState(() {
                                  age = value!;
                                });
                              },
                            ),
                            TextFormField(
                              key: const ValueKey('email'),
                              decoration:
                                  const InputDecoration(hintText: 'Enter your email'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter a valid email';
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                setState(() {
                                  email = value!;
                                });
                              },
                            ),
                            TextFormField(
                              key: const ValueKey('password'),
                              decoration: const InputDecoration(
                               hintText: 'Enter your Password'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter a valid password';
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                setState(() {
                                  password = value!;
                                });
                              },
                            ),
                            const SizedBox(height: 10,),
                            ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    APIs.signUp(
                                        email, password, name, age, context);
                                  }
                                },
                                child: const Text('Sign Up'))
                          ],
                        ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        loggedIn = loggedIn == true ? false : true;
                      });
                    },
                    child:
                        loggedIn == true ? const Text('Sign Up') : const Text('Sign In')),
              ],
            ),
          ),
        ],
      )
    );
  }
}
