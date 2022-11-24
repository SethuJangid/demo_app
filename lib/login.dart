import 'package:demo_app/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xfff2f8fd),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 100,),
              Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(100))
                ),
                child: Image.asset(
                  "assets/logo.png",
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 100,),
              Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Email Address",
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          hintText: 'username@gmail.com',
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.email_rounded,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          hintText: '**********',
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.lock,
                            ),
                          ),
                          suffixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-10,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  child: const Text("Login",style: const TextStyle(fontSize: 14),),
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(const Radius.circular(30))
                  ),
                  textColor: const Color(0xfff2f8fd),
                  color: const Color(0xff3d4786),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width-10,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Signup",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black12),),
                    Text("Forgot Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black12),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}