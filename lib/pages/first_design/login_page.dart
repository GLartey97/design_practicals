import 'package:design_practicals/pages/first_design/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  Color primaryColor = const Color(0xFF1d67a9);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    height: deviceHeight * 0.20,
                    width: deviceWidth,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/logos/Gizer_7.png"),
                    )),
                  ),
                ),
                Text(
                  "Login to your Account",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: primaryColor.withOpacity(0.2)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      cursorColor: Colors.white,
                      autocorrect: false,
                      style: TextStyle(color: primaryColor),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle:
                            TextStyle(color: primaryColor.withOpacity(0.5)),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: primaryColor.withOpacity(0.2),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      obscureText: true,
                      cursorColor: Colors.white,
                      autocorrect: false,
                      style: TextStyle(color: primaryColor),
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: primaryColor.withOpacity(0.5)),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.04,
                ),
                MaterialButton(
                  minWidth: deviceWidth,
                  height: deviceHeight * 0.06,
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ));
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                //whitespace
                SizedBox(
                  height: deviceHeight * 0.08,
                ),
                Padding(
                  padding: EdgeInsets.only(left: deviceWidth * 0.28),
                  child: Text(
                    "- Or sign in with -",
                    style: TextStyle(
                      fontSize: 13,
                      color: primaryColor.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      height: deviceHeight * 0.08,
                      child: SvgPicture.asset(
                        "assets/icons/flat-color-icons--google.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      height: deviceHeight * 0.08,
                      child: SvgPicture.asset(
                        "assets/icons/uil--facebook-f.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.white,
                      height: deviceHeight * 0.08,
                      child: SvgPicture.asset(
                        "assets/icons/devicon--twitter.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: deviceHeight * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: primaryColor.withOpacity(0.5), fontSize: 13),
                    ),
                    Text(
                      " Sign up",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
