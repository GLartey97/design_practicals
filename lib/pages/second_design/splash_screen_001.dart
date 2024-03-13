import 'package:design_practicals/pages/second_design/login_page_001.dart';
import 'package:design_practicals/pages/second_design/sign_up_page_001.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          //Background Image
          Container(
            height: deviceHeight,
            width: deviceWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/backgrounds/brown_black_001.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    20,
                    deviceHeight * 0.22,
                    20,
                    deviceHeight * 0.28,
                  ),

                  //Text: WELCOME
                  child: const Text(
                    "WELCOME",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 46,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                //Login Button
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPageOne(),
                      ),
                    );
                  },
                  color: const Color(0xffa3562c),
                  height: deviceHeight * 0.06,
                  minWidth: deviceWidth,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "L O G I N",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.015,
                ),

                //Sign up Button
                MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPageOne(),
                      ),
                    );
                  },
                  color: const Color(0xfffdab72),
                  height: deviceHeight * 0.06,
                  minWidth: deviceWidth,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.05,
                ),

                //Text: Or Login using
                const Text(
                  "OR LOGIN USING",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Google button
                    MaterialButton(
                      onPressed: () {},
                      height: deviceHeight * 0.07,
                      minWidth: deviceWidth * 0.2,
                      shape: const CircleBorder(),
                      color: Colors.white70,
                      child: SvgPicture.asset(
                        "assets/icons/flat-color-icons--google.svg",
                        height: 24,
                        width: 24,
                      ),
                    ),

                    //Facebook button
                    MaterialButton(
                      onPressed: () {},
                      height: deviceHeight * 0.07,
                      minWidth: deviceWidth * 0.2,
                      shape: const CircleBorder(),
                      color: Colors.white70,
                      child: SvgPicture.asset(
                        "assets/icons/uil--facebook-f.svg",
                        height: 24,
                        width: 24,
                      ),
                    ),

                    //Twitter button
                    MaterialButton(
                      onPressed: () {},
                      height: deviceHeight * 0.07,
                      minWidth: deviceWidth * 0.2,
                      shape: const CircleBorder(),
                      color: Colors.white70,
                      child: SvgPicture.asset(
                        "assets/icons/devicon--twitter.svg",
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
