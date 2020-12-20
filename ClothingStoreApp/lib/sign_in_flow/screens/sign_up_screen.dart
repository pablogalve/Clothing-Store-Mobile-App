import 'package:flutter/material.dart';

class EmailAndPassword {
  String email, password, fullName;
  EmailAndPassword(this.email, this.password, this.fullName);
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _email, _password, _fullName;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _fullName = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _fullName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40),
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 12),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _fullName,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                labelText: 'Full Name',
              ),
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),
            FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(
                  EmailAndPassword(
                    _email.text,
                    _password.text,
                    _fullName.text,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}