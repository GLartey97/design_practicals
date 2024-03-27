import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //background image
            Container(
              height: deviceHeight,
              width: deviceWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/backgrounds/green_back_001.jpg"),
                ),
              ),
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              ),
            ),

            //logo
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Container(
                height: deviceHeight * 0.35,
                width: deviceWidth * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/logos/Gizer_001.png"),
                  ),
                ),
              ),
            ),

            //Welcome text
            Padding(
              padding: EdgeInsets.fromLTRB(30, deviceHeight * 0.25, 0, 0),
              child: const Text(
                "Welcome",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),

            //Sign in text
            Padding(
              padding: EdgeInsets.fromLTRB(30, deviceHeight * 0.3, 0, 0),
              child: const Text(
                "Sign in to continue",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),

            //Second layer containing Sign-in details
            Padding(
              padding: EdgeInsets.only(top: deviceHeight * 0.5),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  height: deviceHeight * 0.5,
                  width: deviceWidth,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Email text
                        const Text(
                          "Email address",
                          style: TextStyle(
                              color: Color(0xff5b875a),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),

                        SizedBox(
                          height: deviceHeight * 0.005,
                        ),

                        //Email Textfield
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xff315c40)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              cursorColor: Colors.white,
                              autocorrect: false,
                              style: TextStyle(color: Color(0xff315c40)),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: deviceHeight * 0.02,
                        ),

                        //Password text
                        const Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0xff5b875a),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),

                        SizedBox(
                          height: deviceHeight * 0.005,
                        ),

                        //Password Textfield
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xff315c40)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              cursorColor: Colors.white,
                              autocorrect: false,
                              obscureText: true,
                              style: TextStyle(color: Color(0xff315c40)),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    Icons.visibility,
                                    color: Color(0xff315c40),
                                  )),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: deviceHeight * 0.05,
                        ),

                        //Login button
                        MaterialButton(
                          minWidth: deviceWidth,
                          height: deviceHeight * 0.06,
                          color: const Color(0xff315c40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),

                        SizedBox(
                          height: deviceHeight * 0.07,
                        ),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //Sign up text
                            Text(
                              "Sign up",
                              style: TextStyle(
                                color: Color(0xff5b875a),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff315c40),
                              ),
                            ),

                            //Forget password text
                            Text(
                              "Forget Password",
                              style: TextStyle(
                                color: Color(0xff5b875a),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff315c40),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
