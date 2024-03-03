import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main()  {
  runApp(MaterialApp(
    home: logIn(),
    debugShowCheckedModeBanner: false,
  ));
}

class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 700,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.shade700,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/Splash/splashImage.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0), // Add padding to the container
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 10.0), // Add space between TextFields // Add space between TextFields
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.white),
                            icon: Icon(Icons.mail_outline_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0), // Add space between TextFields
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.white),
                            icon: Icon(Icons.password, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: (){}, child: Text("SignUp",style: TextStyle(color: Colors.black,fontSize: 20),))

                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
