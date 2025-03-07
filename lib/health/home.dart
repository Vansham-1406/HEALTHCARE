import 'package:flutter/material.dart';
import 'package:healthcare/health/login.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 251, 252, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(252, 251, 252, 1),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/doctors.png")),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              child: Text(
                "Doctors Appointment",
                style: TextStyle(
                    fontSize: 34,
                    color: Color.fromRGBO(128, 119, 221, 1),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              child: Text(
                "Appoint your doctor",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(114, 111, 207, 1),
                    foregroundColor: Colors.white,
                    fixedSize: const Size(130, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  )),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(114, 111, 207, 1),
                    foregroundColor: Colors.white,
                    fixedSize: const Size(130, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ))
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 50))
        ],
      ),
    );
  }
}
