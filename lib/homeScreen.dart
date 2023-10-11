import 'package:final_project/cateringScreen.dart';
import 'package:final_project/descoverHere.dart';
import 'package:final_project/magazineScreen.dart';
import 'package:final_project/userProfile.dart';
import 'package:final_project/vendorList.dart';
import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenSTF(),
    );
  }
}

class HomeScreenSTF extends StatefulWidget {
  const HomeScreenSTF({Key? key}) : super(key: key);

  @override
  State<HomeScreenSTF> createState() => _HomeScreenSTFState();
}

class _HomeScreenSTFState extends State<HomeScreenSTF> {
  late double width;
  late double height;
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          /// Top Bar
          Container(
            child: AppBar(
              backgroundColor: Color(0XffC75D38),
              title: Text('Home',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              actions: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.search,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: (){
                      /// Notification
                      AwesomeNotifications().isNotificationAllowed().then((isAllowed) async {
                        if (!isAllowed) {
                          // This is just a basic example. For real apps, you must show some
                          // friendly dialog box before call the request method.
                          // This is very important to not harm the user experience
                          AwesomeNotifications().requestPermissionToSendNotifications();
                        }
                        else{
                          // String localTimeZone = await AwesomeNotifications().getLocalTimeZoneIdentifier();

                          await AwesomeNotifications().createNotification(
                              content: NotificationContent(
                                  id: 7,
                                  channelKey: 'basic_channel',
                                  title: 'Best Wedding Planner'+ Emojis.emotion_red_heart + Emojis.smile_rolling_on_the_floor_laughing + Emojis.emotion_red_heart,
                                  body:
                                  'We plan, design your dream wedding with best quality services with'
                                      ' our professional team. Planning, production and design services'
                                      ' with the best quality for your dream wedding. Professional Service.'
                                      ' Dream Weddings. ${Emojis.transport_police_car} ${Emojis.smile_alien} ${Emojis.flag_UnitedStates} ${Emojis.person_baby}',
                                  notificationLayout: NotificationLayout.BigPicture,
                                  bigPicture: 'asset://assets/images/descover/destination.webp'),
                              // schedule: NotificationCalendar(second: 1, timeZone: localTimeZone)
                          );
                        }
                      });
                    },
                    icon:const Icon(Icons.notifications_active_outlined,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const UserProfile()));
                    },
                    icon: const Icon(Icons.person,
                      color: Colors.white,
                    )),
              ],
            ),
          ),

          /// Image & Button
          Container(
            child: Stack(
              children: [
                Container(
                  child: Image.asset('assets/images/home/background.jpg',
                    fit: BoxFit.fitWidth,
                    width: width*1,
                    height: height*.26,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.02, left: width*.04),
                  width: width*.5,
                  child: Image.asset('assets/images/home/ring2.png',
                  ),
                ),

                /// Latest Trends & Button
                Container(
                  margin: EdgeInsets.only(left: width*.58, top: height*.11),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Latest Trends &',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        child: Text('Wedding Essentials',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height*.01),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0XffC75D38),
                          ),
                          onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const DescoverHereScreen()));
                          },
                          child:const Text('Discover Here',
                            style: TextStyle(
                              fontSize: 12,
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Text See All & Icon
          Container(
            width: width,
            height: height*.05,
            margin: EdgeInsets.only(left: width*.04),
            child: Row(
              children: [
                Container(
                  child: Text('Build Your Team of Vendors'),
                ),
                /// see all
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: width*.2),
                      child: Text('See All',
                        style: TextStyle(
                          color: Color(0xffC75D38),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Icon(Icons.arrow_forward_ios_outlined,
                          size: 18,
                          color: Color(0xffC75D38),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => VendorList()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// Vendor Card
          Container(
            height: height*.4,
            // color: Colors.red,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: height*.006),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// Card 1
                      Container(
                        // width: width*.33,
                        child: Column(
                          children: [
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xffB7B7B7), width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                // padding: EdgeInsets.all(),
                                child: Image.asset('assets/images/home/venue.png',
                                  height: height*.12,
                                  width: width*.22,
                                ),
                              ),

                            ),
                            Container(
                                margin: EdgeInsets.only(top: height*.014),
                                child: Text('Venue')),
                          ],
                        ),
                      ),
                      /// Card 2
                      Container(
                        // width: width*.33,
                        child: Column(
                          children: [
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xffB7B7B7), width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(width*.04),
                                child: Image.asset('assets/images/home/lodgings.png',
                                  height: height*.08,
                                  width: width*.16,
                                ),
                              ),

                            ),
                            Container(
                                margin: EdgeInsets.only(top: height*.014),
                                child: Text('Lodgings')),
                          ],
                        ),
                      ),
                      /// Card 3
                      Container(
                        // width: width*.33,
                        child: Column(
                          children: [
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xffB7B7B7), width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(width*.04),
                                child: Image.asset('assets/images/home/decoration1.png',
                                  height: height*.08,
                                  width: width*.16,
                                ),
                              ),

                            ),
                            Container(
                                margin: EdgeInsets.only(top: height*.014),
                                child: Text('Decoration')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Card 1
                      InkWell(
                        child: Container(
                          // width: width*.33,
                          child: Column(
                            children: [
                              Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Color(0xffC75D38), width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(width*.04),
                                  child: Image.asset('assets/images/home/catering.png',
                                    color: Color(0xffC75D38),
                                    height: height*.08,
                                    width: width*.16,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: height*.016),
                                  child: Text('Catering',
                                  style: TextStyle(
                                    color: Color(0xffC75D38),
                                  ),
                                  )),
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => CateringScreen())
                          );
                        },
                      ),
                      /// Card 2
                      Container(
                        // width: width*.33,
                        child: Column(
                          children: [
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xffB7B7B7), width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(width*.04),
                                child: Image.asset('assets/images/home/camera.png',
                                  height: height*.08,
                                  width: width*.16,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: height*.016),
                                child: Text('Photoshoot')),
                          ],
                        ),
                      ),
                      /// Card 3
                      Container(
                        // width: width*.33,
                        child: Column(
                          children: [
                            Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xffB7B7B7), width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(width*.04),
                                child: Image.asset('assets/images/home/fitness.png',
                                  height: height*.08,
                                  width: width*.16,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: height*.016),
                                child: Text('Fitness')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Image WEDelight Magazine
          Container(
            height: height*.08,
            // color: Colors.blue,
            child: Stack(
              children: [
                /// Image
                Container(
                  width: width,
                  child: Image.asset('assets/images/home/bg002.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width*.02,),
                        child: Text('WEDelight Magazine ',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        child: Text('for your Big Day Ideas',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11
                          ),
                        ),
                      ),
                      /// Icon
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(left: width*.14),
                          child: Icon(Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const MagazineScreen()));
                        },
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

          /// Bottom Bar
          Container(
            height: height*.099,
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: height*.01),
                  child: Column(
                    children: [
                      Icon(Icons.home_outlined,
                        color: Color(0xffC75D38),
                        size: 40,
                      ),
                      Container(
                        child: Text('Home',
                          style: TextStyle(
                            color: Color(0xffC75D38),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.01),
                  child: Column(
                    children: [
                      Container(
                        height: height*.06,
                        child: Image.asset('assets/images/home/planner.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        child: Text('Planner',
                          style: TextStyle(
                            // color: Color(0xffC75D38),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.01),
                  child: Column(
                    children: [
                      Container(
                        height: height*.06,
                        child: Image.asset('assets/images/home/finance.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        child: Text('Finance',
                          style: TextStyle(
                            // color: Color(0xffC75D38),
                          ),
                        ),
                      ),
                    ],
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

