import 'package:final_project/homeScreen.dart';
import 'package:final_project/signUp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      // backgroundColor: Color(0xffC75D25),
      body: SignInScreenSTF(),
    );
  }
}

class SignInScreenSTF extends StatefulWidget {
  const SignInScreenSTF({Key? key}) : super(key: key);

  @override
  State<SignInScreenSTF> createState() => _SignInScreenSTFState();
}

class _SignInScreenSTFState extends State<SignInScreenSTF> {
  late double width;
  late double height;

  DatabaseReference database = FirebaseDatabase.instance.ref();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // void login() async{
  //   UserCredential user =await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: email.text,
  //       password: password.text
  //   );
  // }

  @override
  void initState(){
    super.initState();

    if(FirebaseAuth.instance.currentUser !=null){

      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => SocialMediaScreen()));

    }
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// back arrow % SignUP
          InkWell(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    )),
               const Text('SignUp'),
              ],
            ),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>const SignUpScreen()));
            },
          ),
          /// Login
          Center(
            child: Container(
              margin: EdgeInsets.only(top: height*.04),
              child:const Text('LogIn',
              style: TextStyle(
                fontSize: 32,
                // color: Color(0xffB7B7B7),
                fontWeight: FontWeight.w800
              ),
              ),
            ),
          ),

          /// Input Field
          Container(
            margin: EdgeInsets.only(top: height*.04, left: width*.04, right: width*.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Input email
               const Text(
                  'Email',
                  style: TextStyle(
                    // color: Color(0xffB7B7B7),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side:const BorderSide(
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
                      style:const TextStyle(
                        // color: Color(0xffB7B7B7),
                      ),
                      decoration:const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        hintText: 'Enter your Email',
                          hintStyle: TextStyle(
                            color: Color(0xffB7B7B7)
                          ),
                          // counterStyle:Colors.white,
                      ),
                    ),
                  ),
                ),

                /// password
                SizedBox(
                  height: height*.02,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    // color: Color(0xffB7B7B7)
                  ),
                ),
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side:const BorderSide(
                      color: Color(0xffB7B7B7),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    // color: Color(0xffC75D38),
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      style:const TextStyle(
                        // color: Color(0xffB7B7B7),
                      ),
                      decoration:const InputDecoration(
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

                ///  forgot password
                Container(
                  alignment: Alignment.centerRight,
                  // ignore: deprecated_member_use
                  child: TextButton(
                    onPressed: () => print('Forgot Password Button Pressed'),
                    // padding: EdgeInsets.only(right: 0.0),
                    child:const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xffB7B7B7)
                      ),
                    ),
                  ),
                ),

                /// check box
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                        autofocus: false,
                        checkColor: Color(0xffC75D38),
                        value: isChecked,
                        activeColor: Colors.white,
                        side:const BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                     const Text(
                        'Remember me',
                        style: TextStyle(
                          // color: Color(0xffB7B7B7)
                        ),
                      ),
                    ],
                  ),
                ),

                /// button
                Container(
                  padding:const EdgeInsets.symmetric(vertical: 25.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color(0xffC75D38),
                    ),

                    onPressed: () async{

                      // DatabaseReference database =FirebaseDatabase.instance.ref();

                      UserCredential user =await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email.text,
                          password: password.text);

                      if(user.user !=null){
                        print(user.user!.uid);

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()));
                      }


                    },


                    // padding: EdgeInsets.all(15.0),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(30.0),
                    // ),
                    // color: Color(0xffC75D38),
                    
                    child:const Text(
                      'LOGIN',
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
                    const Text(
                       '- OR -',
                       style: TextStyle(
                         color: Color(0xffB7B7B7),
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                     SizedBox(height: height*.02),
                    const Text(
                       'Sign up with',
                       style: TextStyle(
                         // color: Color(0xffB7B7B7)
                       ),
                     ),

                     /// Images google & facebook
                     SizedBox(
                       height: height*.04,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         CircleAvatar(
                           backgroundColor: Colors.white,
                           child: Container(
                             child: Image.asset('assets/images/signIn/google.png',
                             fit: BoxFit.cover,
                             ),
                           ),
                         ),
                         CircleAvatar(
                           backgroundColor: Colors.white,
                           child: Container(
                             child: Image.asset('assets/images/signIn/face-2.png',
                              fit: BoxFit.cover,
                             ),
                           ),
                         ),
                         CircleAvatar(
                           backgroundColor: Colors.white,
                           child: Container(
                             child: Image.asset('assets/images/signIn/insta.png',
                               fit: BoxFit.cover,
                             ),
                           ),
                         ),
                         CircleAvatar(
                           backgroundColor: Colors.white,
                           child: Container(
                             child: Image.asset('assets/images/signIn/twitter.webp',
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
