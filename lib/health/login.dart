import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/health/doctor.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  // ignore: library_private_types_in_public_api
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool pass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Image.asset("assets/doctors.png"),
        ),
        const SizedBox(height: 20),
        Container(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Enter your username',
                        labelText: 'Username',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      obscureText: pass ? false : true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                              pass ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              pass = !pass;
                            });
                          },
                        ),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                      ),
                    ),
                  ],
                ))),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(107, 102, 192, 1),
              foregroundColor: Colors.white,
              fixedSize: const Size.fromHeight(50),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyDoctor()),
              );
            },
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
        ),
        const SizedBox(height: 25),
        Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
                text: 'Don\'t have any account?',
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Create Account',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                    style: const TextStyle(
                        color: Color.fromRGBO(107, 102, 192, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )
                ]),
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 50))
      ],
    )));
  }
}

// ignore: use_key_in_widget_constructors
class SignUp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool pass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Image.asset("assets/doctors.png"),
        ),
        const SizedBox(height: 20),
        Container(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Enter your name',
                        labelText: 'Full Name',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter your email',
                        labelText: 'Email address',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.call),
                        hintText: 'Enter your phone number',
                        labelText: 'Phone number',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      obscureText: pass ? false : true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                              pass ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              pass = !pass;
                            });
                          },
                        ),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                      ),
                    ),
                  ],
                ))),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(107, 102, 192, 1),
                  foregroundColor: Colors.white,
                  fixedSize: const Size.fromHeight(50)),
              onPressed: () {
                // FirebaseAuth.instance
                //     .createUserWithEmailAndPassword(
                //         email: emailController.text,
                //         password: passwordController.text)
                //     .then((value) => Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => MyDoctor())))
                //     .onError((error, stackTrace) => print(error));
              },
              child: const Text(
                "Create Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              )),
        ),
        const SizedBox(height: 25),
        Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
                text: 'Already have account?',
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Log in',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    style: const TextStyle(
                        color: Color.fromRGBO(107, 102, 192, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )
                ]),
          ),
        ),
        const SizedBox(height: 50),
      ],
    )));
  }
}
