import 'package:flutter/material.dart';

void main() {
  runApp(welcomescreen());
}

class welcomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              './assets/images/robot.jpg',
              fit: BoxFit.cover,
            )),

               SingleChildScrollView( child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 550,
                  ),
                  Text(
                    "Connect",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),

                  Center(
                    child: SingleChildScrollView ( child : Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            icon: new Icon(Icons.perm_identity,color: Colors.yellow),

                            disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                      borderRadius:
                      BorderRadius.all(Radius.circular(12))),
                            fillColor: Color.fromRGBO(255, 235, 59, 1),
                            hintText: 'id ',
                            labelText: "Robot id",
                            labelStyle: TextStyle(color: Colors.white),

                            hintStyle: TextStyle(color: Colors.yellow),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),


                          ),


                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                          icon: new Icon(Icons.admin_panel_settings_sharp,color: Colors.yellow),
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.yellow),
                                borderRadius: BorderRadius.circular(12)),
                            labelText: "Password ",
                            labelStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.yellow,
                            hintText: "password",
                            hintStyle: TextStyle(color: Colors.yellow),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          //color: Colors.yellow,
                          height: 70,
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
                              "►Connect",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "forget password?",
                              textAlign: TextAlign.end,
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
