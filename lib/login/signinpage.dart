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
  // body: SingleChildScrollView(
  //       child: Container(
  //         child: Column(
  //           children: [
  //             Container(
  //               alignment: Alignment.center,
  //               height: 300,

  //               child:Lottie.asset("assets/animation_lmyu2k9e.json",
  //                )

  //             ),
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                height: size.height * 0.4,
                child: Lottie.asset("images/animation_ln6bve2m.json"),
              ),
              const Expanded(
                child: Column(
                  children: [],
                ),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: TextFormField(
                                    key: const ValueKey('email'),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        hintText: 'Enter your email'),
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: TextFormField(
                                    key: const ValueKey('password'),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                          10,
                                        )),
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
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: MaterialButton(
                                      height: size.height * 0.06,
                                      minWidth: size.width,
                                      color: Colors.red,
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          _formKey.currentState!.save();
                                          APIs.signIn(email, password, context);
                                        }
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: const Text('Sign In'),
                                      )),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                TextFormField(
                                  key: const ValueKey('name'),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: 'First Name'),
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
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  key: const ValueKey('age'),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: 'Enter your Age'),
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
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  key: const ValueKey('email'),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      hintText: 'Enter your email'),
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
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  key: const ValueKey('password'),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                        10,
                                      )),
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
                                const SizedBox(
                                  height: 10,
                                ),
                                MaterialButton(
                                  color: Colors.red,
                                  height: size.height * 0.07,
                                  minWidth: size.width,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _formKey.currentState!.save();
                                      APIs.signUp(
                                          email, password, name, age, context);
                                    }
                                  },
                                  child: const Text('Sign Up'),
                                )
                              ],
                            ),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            loggedIn = loggedIn == true ? false : true;
                          });
                        },
                        child: loggedIn == true
                            ? const Text('Sign Up')
                            : const Text('Sign In')),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}