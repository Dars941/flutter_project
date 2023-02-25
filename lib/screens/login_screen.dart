import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/screens/homescreen.dart';
import 'package:flutter/material.dart';

import '../components/login_components/login_Textfield.dart';

void main() {
  runApp(welcomescreen());
}

class welcomescreen extends StatefulWidget {
  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  // bool _isKeyboardVisible = true;
  final robo_idController = TextEditingController();

  final passController = TextEditingController();

void UserSignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: robo_idController.text.trim(),
        password: passController.text.trim());
  }
  void dispose() {
   robo_idController.dispose();
   passController.dispose();
   super.dispose();

  }

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('./assets/images/robot.jpg'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.only(bottom : 10),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "   Connect",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: SingleChildScrollView(
                          reverse: true,
                          child: Column(
                            //  mainAxisSize: MainAxisSize.min,
                            children: [
                              // robot id
                              LoginTextField(
                                controller: robo_idController,
                                hintText: 'id',
                                labelText: 'Robot id',
                                obscureText: false,
                                obsuringCharacter: '',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // password
                              LoginTextField(
                                controller: passController,
                                hintText: 'password',
                                labelText: 'password',
                                obscureText: true,
                                obsuringCharacter: '#',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                //color: Colors.yellow,
                                height: 60,
                                width: 300,

                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    //  primary: Colors.yellow,
                                    backgroundColor: Colors.yellow,
                                    side: BorderSide(
                                      width: 5,
                                      color: Colors.brown,
                                    ),
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(12)),
                                  ),
                                  onPressed: () {
                              print(robo_idController.toString());
                              print(passController.toString());
                              },

                                child: Text(
                                    "►Connect ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                  onPressed: UserSignIn,



                                  child: Text(
                                    "forget password?",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                      ),

                      //
                      // Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
                    ],
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
