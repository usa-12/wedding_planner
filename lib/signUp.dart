import 'package:final_project/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      // backgroundColor: Color(0xffC75D38),
      body: SignUpScreenSTF(),
    );
  }
}

class SignUpScreenSTF extends StatefulWidget {
  const SignUpScreenSTF({Key? key}) : super(key: key);

  @override
  State<SignUpScreenSTF> createState() => _SignUpScreenSTFState();
}

class _SignUpScreenSTFState extends State<SignUpScreenSTF> {
  late double width;
  late double height;

  DatabaseReference database = FirebaseDatabase.instance.ref();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// back arrow
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
              )),

          /// Login
          Center(
            child: Container(
              margin: EdgeInsets.only(top: height * .04),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 32,
                    // color: Color(0xffB7B7B7),
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),

          /// Input Field
          Container(
            margin: EdgeInsets.only(
                top: height * .04, left: width * .04, right: width * .04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Input Name
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Color(0xffB7B7B7),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.centerRight,
                    // height: 60.0,
                    child: TextField(
                      controller: name,
                      // cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                          // color: Color(0xffB7B7B7),
                          ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        hintText: 'Enter your Name',
                        hintStyle: TextStyle(color: Color(0xffB7B7B7)),
                        // counterStyle:Colors.white,
                      ),
                    ),
                  ),
                ),

                /// Input email
                SizedBox(
                  height: height * .02,
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Color(0xffB7B7B7),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.centerRight,
                    // height: 60.0,
                    child: TextField(
                      controller: email,
                      // cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                          // color: Color(0xffB7B7B7),
                          ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        hintText: 'Enter your Email',
                        hintStyle: TextStyle(color: Color(0xffB7B7B7)),
                        // counterStyle:Colors.white,
                      ),
                    ),
                  ),
                ),

                /// password
                SizedBox(
                  height: height * .02,
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Color(0xffB7B7B7),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    // color: Color(0xffC75D38),
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      style: TextStyle(
                          // color: Color(0xffB7B7B7),
                          ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(
                          color: Color(0xffB7B7B7),
                        ),
                      ),
                    ),
                  ),
                ),

                /// button
                SizedBox(
                  height: height * .04,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  width: double.infinity,
                  // ignore: deprecated_member_use
                  child: ElevatedButton(
                    // elevation: 5.0,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffC75D38),
                    ),

                    onPressed: () async {
                      DatabaseReference database =
                          FirebaseDatabase.instance.ref();

                      UserCredential user = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: email.text, password: password.text);

                      if (user.user != null) {
                        print(user.user!.uid);

                        await database
                            .child('Users')
                            .child(user.user!.uid)
                            .set({
                          "name": name.text,
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      }
                    },

                    // padding: EdgeInsets.all(15.0),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(30.0),
                    // ),
                    // color: Color(0xffC75D38),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                /// text sign in with
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          '- OR -',
                          style: TextStyle(
                            color: Color(0xffB7B7B7),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: height * .02),
                        Text(
                          'Sign up with',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        /// Images google & facebook
                        SizedBox(
                          height: height * .03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Container(
                                child: Image.asset(
                                  'assets/images/signIn/google.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Container(
                                child: Image.asset(
                                  'assets/images/signIn/face-2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Container(
                                child: Image.asset(
                                  'assets/images/signIn/insta.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Container(
                                child: Image.asset(
                                  'assets/images/signIn/twitter.webp',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
