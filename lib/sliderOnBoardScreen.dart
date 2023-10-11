import 'package:final_project/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';


class SliderOnBoardScreen extends StatelessWidget {
  const SliderOnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC75D38),
      body: SliderOnBoardScreenSTF(),
    );
  }
}

class SliderOnBoardScreenSTF extends StatefulWidget {
  const SliderOnBoardScreenSTF({Key? key}) : super(key: key);

  @override
  State<SliderOnBoardScreenSTF> createState() => _SliderOnBoardScreenSTFState();
}

class _SliderOnBoardScreenSTFState extends State<SliderOnBoardScreenSTF> {

  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/images/signIn/marrige-2.png",
      title: "",
      desc:"Discover restaurants by type of meal, See menus and photos for nearby restaurants and bookmark your favorite places on the go",
    ),
    OnbordingData(
      imagePath: "assets/images/signIn/marrige-3.png",
      title: "Order",
      desc:"Best restaurants delivering to your doorstep, Browse menus and build your order in seconds",
    ),
    OnbordingData(
      imagePath: "assets/images/signIn/marrige-1.png",
      title: "Eat",
      desc:"Explore curated lists of top restaurants, cafes, pubs, and bars in Mumbai, based on trends.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new IntroScreen(list,MaterialPageRoute(builder: (context) => HomeScreen()),
    );

  }
}

