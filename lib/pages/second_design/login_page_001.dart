import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageOne extends StatefulWidget {
  const LoginPageOne({super.key});

  @override
  State<LoginPageOne> createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {
  bool _obscureText = true;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: deviceHeight,
              width: deviceWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/backgrounds/black_back_001.jpg"),
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
                      deviceHeight * 0.15,
                      20,
                      deviceHeight * 0.15,
                    ),

                    //Text: REGISTER
                    child: const Text(
                      "L O G I N",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10, bottom: deviceHeight * 0.02),
                      child: const TextField(
                        cursorColor: Colors.white,
                        autocorrect: false,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          hintText: "Username/Email",
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 10, bottom: deviceHeight * 0.1),
                      child: TextField(
                        cursorColor: Colors.white,
                        autocorrect: false,
                        obscureText: _obscureText,
                        controller: _passwordController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.lock, color: Colors.white),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.white),
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
                  MaterialButton(
                    onPressed: () {},
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
                    height: deviceHeight * 0.1,
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
            ),
          ],
        ),
      ),
    );
  }
}
