import 'package:e_commerce_app/logIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
/*git remote add origin https://github.com/Ashlesh105/e_commerce_app_flutter.git
git branch -M main
git add .
git status
got commit -m " "
git push -u origin main*/
void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(
    Duration(seconds:3),
  );
  FlutterNativeSplash.remove();
  runApp(MaterialApp(
    home: homePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: TextStyle(color: Colors.white),
                            icon: Icon(Icons.person, color: Colors.white),
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
                          decoration: InputDecoration(
                            labelText: "Mobile NUmber",
                            labelStyle: TextStyle(color: Colors.white),
                            icon: Icon(Icons.call, color: Colors.white),
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
                        SizedBox(height: 10.0), // Add space between TextFields
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
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
                        ElevatedButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>logIn()));
                        }, child: Text("SignUp",style: TextStyle(color: Colors.black,fontSize: 20),))
                        
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
