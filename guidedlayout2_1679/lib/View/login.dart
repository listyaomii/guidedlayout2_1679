import 'package:flutter/material.dart';

import 'package:guidedlayout2_1679/View/home.dart';
import 'package:guidedlayout2_1679/View/register.dart';
import 'package:guidedlayout2_1679/component/form_component.dart';

class LoginView extends StatefulWidget {
  final Map? data;

  // Constructor
  const LoginView({super.key, this.data});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Map? dataForm = widget.data; // Correctly accessing widget.data

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey, // Correctly accessing _formKey from the state class
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              inputForm(
                (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return "Username tidak boleh kosong!";
                  }
                  return null;
                },
                controller: usernameController,
                hintTxt: "Username",
                helperTxt: "Inputkan User yang telah didaftar",
                iconData: Icons.person,
              ),
              inputForm(
                (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return "password kosong";
                  }
                  return null;
                },
                password: true,
                controller: passwordController,
                hintTxt: "Password",
                helperTxt: "Inputkan Password",
                iconData: Icons.password,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (dataForm!['username'] == usernameController.text &&
                            dataForm['password'] == passwordController.text) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const HomeView(),
                            ),
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: const Text('password salah'),
                              content: TextButton(
                                onPressed: () => pushRegister(context),
                                child: const Text('Daftar Disini!!'),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    child: const Text('Login'),
                  ),
                  TextButton(
                    onPressed: () {
                      Map<String, dynamic> formData = {};
                      formData['username'] = usernameController.text;
                      formData['password'] = passwordController.text;
                      pushRegister(context);
                    },
                    child: const Text('Belum Punya Akun?'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void pushRegister(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const RegisterView(),
      ),
    );
  }
}
