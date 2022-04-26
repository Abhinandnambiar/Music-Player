// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:new_xd/home_field/home.dart';
import 'package:new_xd/login_material/awesome_icons.dart';
import 'package:new_xd/play_page/play_page.dart';

class TextForm_ui extends StatefulWidget {
  const TextForm_ui({
    Key? key,
  }) : super(key: key);

  @override
  State<TextForm_ui> createState() => _TextForm_uiState();
}

class _TextForm_uiState extends State<TextForm_ui> {
  final _formkey = GlobalKey<FormState>();

  final _checkUsername = TextEditingController();
  final _checkPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 550,
      width: 170,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(14)),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 30),
              child: TextFormField(
                controller: _checkUsername,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'value is empty';
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.email,
                    color: Color(0xff1c2f40),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.white,
                  filled: true,
                  label: Text(
                    'Username..',
                    style: TextStyle(
                      color: Color(0xff1c2f40),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
              child: TextFormField(
                controller: _checkPassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'value is empty';
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff1c2f40),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.white,
                  filled: true,
                  label: Text(
                    'Password..',
                    style: TextStyle(
                      color: Color(0xff1c2f40),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register Now?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 50,
              width: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade800),
              child: TextButton(
                child: const Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  check(context);
                  // _formkey.currentState?.validate();
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Awesome_icons(),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Create a new account',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )))
          ],
        ),
      ),
    );
  }

  Future<bool?> check(BuildContext context) async {
    final _username = _checkUsername.text;
    final _password = _checkPassword.text;
    if (_password.isNotEmpty) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeField()));
    } else {
      _formkey.currentState!.validate();
    }
  }
}
