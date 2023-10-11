import 'package:final_project/magazineReadMore.dart';
import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';



class MagazineScreen extends StatelessWidget {
  const MagazineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MagazineScreenSTF(),
    );
  }
}

class MagazineScreenSTF extends StatefulWidget {
  const MagazineScreenSTF({Key? key}) : super(key: key);

  @override
  State<MagazineScreenSTF> createState() => _MagazineScreenSTFState();
}

class _MagazineScreenSTFState extends State<MagazineScreenSTF> {
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
              title: Text('Magazine',
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
          /// Theme Heading
          Container(
            margin: EdgeInsets.only(top: height*.0004,),
            padding: EdgeInsets.only(top: height*.014, left: width*.1),
            width: width,
            height: height*.06,
            color: Color(0xffC75D38),
            child: Text('Greenhouse Themes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),
            ),
          ),
          /// Theme Card List View Builder
          Container(
            // margin: EdgeInsets.only(bottom: height*.02),
            width: width,
            height: height*.82,
            child: ListView.builder(
              itemCount: 1,
                itemBuilder: (BuildContext context, index){
                  return Container(
                    margin: EdgeInsets.only(top: height*.01),
                    child: Column(
                      children: [
                        /// First Portion Card
                        Card(
                          elevation: 9.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Image
                              Stack(
                                children: [
                                  Container(
                                    width: width,
                                    height: height*.22,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                      child: Image.asset('assets/images/magazine/R4.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      margin: EdgeInsets.only(left: width*.628),
                                      padding: EdgeInsets.symmetric(horizontal: width*.06, vertical: height*.01),
                                      decoration: BoxDecoration(
                                          color: Color(0xffC75D38),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                                      ),
                                      child: Text('Decor Theme',
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 12
                                        ),
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const MagazineReadMore()));
                                    },
                                  ),
                                ],
                              ),
                              /// Text Paragraph
                              Container(
                                margin: EdgeInsets.only(top: height*.016, left: width*.04),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Gorgeous Greenhouse Theme',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: height*.01),
                                      child: Text('Aug 12 .2mins read',
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: height*.01),
                                      child: Text('Your wedding invitations, cake and favors '
                                          'are great ways to off your wedding'
                                          'theme to guests. Whether looked for Greenhouse...',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: height*.006),
                                      child: InkWell(
                                        child: Text('read more',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffC75D38)
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => const MagazineReadMore()));
                                        },
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// Second Portion Card
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: height*.006),
                              width: width,
                              height: height*.22,
                              child: Card(
                                elevation: 9.0,
                                child: Row(
                                  children: [
                                    /// Iamge
                                    Container(
                                      width: width*.3,
                                      height: height*.16,
                                      child: Card(
                                        elevation: 4.6,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.asset('assets/images/magazine/g-4.jpg',
                                          fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: height*.04, left: width*.04),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Green Tropical Theme',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: height*.01),
                                            child: Text('Sep 15 .15mins read',
                                              style: TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: height*.01),
                                                child: Text('It was a September wedding',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Text('so we looked to darker',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text('tones mixing &...',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text('read more',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0xffC75D38)
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: width*.628),
                              padding: EdgeInsets.symmetric(horizontal: width*.06, vertical: height*.01),
                              decoration: BoxDecoration(
                                  color: Color(0xffC75D38),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                              ),
                              child: Text('Decor Theme',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 11
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: height*.006),
                              width: width,
                              height: height*.22,
                              child: Card(
                                elevation: 9.0,
                                child: Row(
                                  children: [
                                    /// Iamge
                                    Container(
                                      width: width*.3,
                                      height: height*.16,
                                      child: Card(
                                        elevation: 4.6,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.asset('assets/images/magazine/b3.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: height*.04, left: width*.04),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Boho Tropical Bliss',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: height*.01),
                                            child: Text('Sep 15 .15mins read',
                                              style: TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: height*.01),
                                                child: Text('It was a September wedding',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Text('so we looked to darker',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text('tones mixing &...',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text('read more',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0xffC75D38)
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: width*.628),
                              padding: EdgeInsets.symmetric(horizontal: width*.06, vertical: height*.01),
                              decoration: BoxDecoration(
                                  color: Color(0xffC75D38),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                              ),
                              child: Text('Decor Theme',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 11
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: height*.006),
                              width: width,
                              height: height*.22,
                              child: Card(
                                elevation: 9.0,
                                child: Row(
                                  children: [
                                    /// Iamge
                                    Container(
                                      width: width*.3,
                                      height: height*.16,
                                      child: Card(
                                        elevation: 4.6,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.asset('assets/images/magazine/R2.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: height*.04, left: width*.04),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Rose Theme',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: height*.01),
                                            child: Text('Sep 15 .15mins read',
                                              style: TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: height*.01),
                                                child: Text('It was a September wedding',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Text('so we looked to darker',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text('tones mixing &...',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text('read more',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0xffC75D38)
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: width*.628),
                              padding: EdgeInsets.symmetric(horizontal: width*.06, vertical: height*.01),
                              decoration: BoxDecoration(
                                  color: Color(0xffC75D38),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                              ),
                              child: Text('Decor Theme',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 11
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: height*.006),
                              width: width,
                              height: height*.22,
                              child: Card(
                                elevation: 9.0,
                                child: Row(
                                  children: [
                                    /// Iamge
                                    Container(
                                      width: width*.3,
                                      height: height*.16,
                                      child: Card(
                                        elevation: 4.6,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.asset('assets/images/magazine/b1.webp',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: height*.04, left: width*.04),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Green Leave Theme',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: height*.01),
                                            child: Text('Sep 15 .15mins read',
                                              style: TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: height*.01),
                                                child: Text('It was a September wedding',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Text('so we looked to darker',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text('tones mixing &...',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text('read more',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0xffC75D38)
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: width*.628),
                              padding: EdgeInsets.symmetric(horizontal: width*.06, vertical: height*.01),
                              decoration: BoxDecoration(
                                  color: Color(0xffC75D38),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                              ),
                              child: Text('Decor Theme',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 11
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: height*.006),
                              width: width,
                              height: height*.22,
                              child: Card(
                                elevation: 9.0,
                                child: Row(
                                  children: [
                                    /// Iamge
                                    Container(
                                      width: width*.3,
                                      height: height*.16,
                                      child: Card(
                                        elevation: 4.6,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.asset('assets/images/magazine/R5.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: height*.04, left: width*.04),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Artificial Theme',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: height*.01),
                                            child: Text('Sep 15 .15mins read',
                                              style: TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: height*.01),
                                                child: Text('It was a September wedding',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Text('so we looked to darker',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Text('tones mixing &...',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text('read more',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0xffC75D38)
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),


                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: width*.628),
                              padding: EdgeInsets.symmetric(horizontal: width*.06, vertical: height*.01),
                              decoration: BoxDecoration(
                                  color: Color(0xffC75D38),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                              ),
                              child: Text('Decor Theme',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 11
                                ),
                              ),
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

