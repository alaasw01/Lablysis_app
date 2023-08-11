import 'package:flutter/material.dart';
import 'package:iti_final_project/style/colors.dart';

class HomeRegistration extends StatefulWidget {
  const HomeRegistration({super.key});

  @override
  State<HomeRegistration> createState() => _HomeRegistrationState();
}

class _HomeRegistrationState extends State<HomeRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 810,
        decoration: BoxDecoration(color: Colors.grey),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 90.0, horizontal: 23),
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 300,
                    height: 200,
                    child: Image.asset('assets/images/image1a.png')),
                Padding(
                  padding: const EdgeInsets.all(58.0),
                  child: Text("Welcome to Lablysis App for medical analysis",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryColor,
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("login");
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondaryColor),
                    child: TextButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed("sign up");
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
