import 'package:flutter/material.dart';
import '../components/login_components/login_Textfield.dart';

void main() {
  runApp(welcomescreen());
}

class welcomescreen extends StatelessWidget {
  final robo_idController = TextEditingController();
  final passController = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              './assets/images/robot.jpg',
              fit: BoxFit.cover,
            )),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 520,
                  ),
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
                      child: Column(
                        children: [
                          // robot id
                          LoginTextField(controller: robo_idController, hintText: 'id', labelText: 'Robot id',
                            obscureText: false,
                            obsuringCharacter: '',



                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // password
                          LoginTextField(controller: passController, hintText: 'password', labelText: 'password',
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
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              onPressed: () {},
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
                              onPressed: () {},
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
