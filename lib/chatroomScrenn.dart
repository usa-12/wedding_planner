import 'package:flutter/material.dart';

class ChatroomScreen extends StatelessWidget {
  const ChatroomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatroomScreenSTF(),
    );
  }
}

class ChatroomScreenSTF extends StatefulWidget {
  const ChatroomScreenSTF({Key? key}) : super(key: key);

  @override
  State<ChatroomScreenSTF> createState() => _ChatroomScreenSTFState();
}

class _ChatroomScreenSTFState extends State<ChatroomScreenSTF> {
  late double width;
  late double height;



  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialApp(
            title: 'Flutter Chat UI Demo',
            theme: ThemeData(
              primaryColor: const Color(0xffEE5366),
              colorScheme:
              ColorScheme.fromSwatch(accentColor: const Color(0xffEE5366)),
            ),
          ),
        ],
      ),
    );
  }
}

