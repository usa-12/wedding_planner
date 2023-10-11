import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';


class DescoverHereScreen extends StatelessWidget {
  const DescoverHereScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DescoverHereScreenSTF(),
    );
  }
}

class DescoverHereScreenSTF extends StatefulWidget {
  const DescoverHereScreenSTF({Key? key}) : super(key: key);

  @override
  State<DescoverHereScreenSTF> createState() => _DescoverHereScreenSTFState();
}

class _DescoverHereScreenSTFState extends State<DescoverHereScreenSTF> {
  late double width;
  late double height;
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
              title: Text('Discover',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_outlined,
                    color: Colors.white,
                  )),

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
                    icon: Icon(Icons.notifications_active_outlined,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.person,
                      color: Colors.white,
                    )),
              ],
            ),
          ),

          /// List Vendor

          Container(
            width: width,
            height: height*.889,
            color: Colors.grey.shade200,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, index){
                  return Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            /// First Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Destination Wedding
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: height*.02),
                                      width: width*.45,
                                      height: height*.165,
                                      child: Card(
                                        elevation: 6.0,
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(6),
                                          child: Image.asset('assets/images/descover/des_1.jpg',
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                      child: Text('Destination Wedding',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                /// Themes & Decoration
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: height*.02),
                                      width: width*.45,
                                      height: height*.26,
                                      child: Card(
                                        elevation: 6.0,
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(6),
                                            child: Image.asset('assets/images/descover/loca_2.png',
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                      child: Text('Themes & Decoration',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            /// Second Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                /// PhotoShoot & Videography
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: height*.23),
                                      width: width*.45,
                                      height: height*.26,
                                      child: Card(
                                        elevation: 6.0,
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(6),
                                            child: Image.asset('assets/images/descover/photoShoot.webp',
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                      child: Text('PhotoShoot & Videography',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                /// Grooms $ Bridal Fashion
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: height*.33),
                                      width: width*.45,
                                      height: height*.16,
                                      child: Card(
                                        elevation: 6.0,
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(6),
                                            child: Image.asset('assets/images/descover/bridal-4.jpg',
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                      child: Text('Grooms & Bridal Fashion',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),

                          ],
                        ),
                        Stack(
                          children: [
                            /// First Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Travel
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: height*.02),
                                      width: width*.45,
                                      height: height*.165,
                                      child: Card(
                                        elevation: 6.0,
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(6),
                                          child: Image.asset('assets/images/descover/travel-2.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                      child: Text('Haneymoon & Travel',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                /// Fitness
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: height*.02),
                                      width: width*.45,
                                      height: height*.26,
                                      child: Card(
                                        elevation: 6.0,
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(6),
                                            child: Image.asset('assets/images/descover/fitness.jpg',
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                      child: Text('Fitness & Beauty',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            /// Second Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                /// Gift
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: height*.23),
                                      width: width*.45,
                                      height: height*.26,
                                      child: Card(
                                        elevation: 6.0,
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(6),
                                            child: Image.asset('assets/images/descover/gift-1.jpg',
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                      child: Text('Gifts & Registry',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                /// Lodgings
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: height*.33),
                                      width: width*.45,
                                      height: height*.16,
                                      child: Card(
                                        elevation: 6.0,
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(6),
                                            child: Image.asset('assets/images/descover/hotel.jpg',
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                      child: Text('Lodgings & Hotels',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),


        ],
      ),
    );
  }
}

