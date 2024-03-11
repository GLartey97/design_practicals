import 'package:design_practicals/pages/first_design/login_page.dart';
import 'package:design_practicals/pages/first_design/routes/fade_page_route.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoverPage extends StatefulWidget {
  const CoverPage({super.key});

  @override
  State<CoverPage> createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);

    Future.delayed(const Duration(seconds: 6), () {
      _animationController.forward();
    });

    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        FadePageRoute(
          LoginPage(),
        ),
      );
    });
  }

  Color primaryColor = const Color(0xFF1d67a9);

  @override
  Widget build(BuildContext context) {
    //double deviceHeight = MediaQuery.of(context).size.height;
    //double deviceWidth = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return FadeTransition(
          opacity: _fadeAnimation,
          child: Scaffold(
            backgroundColor: primaryColor,
            body: Center(
              child: Container(
                height: 500,
                width: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logos/Gizer_2.png"),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
