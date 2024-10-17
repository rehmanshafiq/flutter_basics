import 'package:flutter/material.dart';
import 'package:flutter_learning/routes/routes.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80.0,),
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 30.0,),
              Text(
                "Welcome to Catalog App! $name",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password"
                      ),
                    ),
                    SizedBox(height: 48.0,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          changeButton = true;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 52,
                        alignment: Alignment.center,
                        child: Text(
                            "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(changeButton ? 20 : 8)
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, CatalogAppRoutes.homeRoute);
                    //   },
                    //   child: Text(
                    //       "Login",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 18
                    //     ),
                    //   ),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(240, 52),
                    //     backgroundColor: Colors.blueAccent
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
