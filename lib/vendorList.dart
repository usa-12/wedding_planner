import 'package:final_project/cateringScreen.dart';
import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';


class VendorList extends StatelessWidget {
  const VendorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VendorListSTF(),
    );
  }
}

class VendorListSTF extends StatefulWidget {
  const VendorListSTF({Key? key}) : super(key: key);

  @override
  State<VendorListSTF> createState() => _VendorListSTFState();
}

class _VendorListSTFState extends State<VendorListSTF> {
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
              title: Text('Vendors',
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
                    icon:const Icon(Icons.notifications_active_outlined,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: (){},
                    icon:const Icon(Icons.person,
                      color: Colors.white,
                    )),
              ],
            ),
          ),

          /// Vendor List

          Container(
            width: width,
            height: height*.889,
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, index){
                  return Container(

                    // color: Colors.red,
                    child: Column(
                      children: [
                        /// First Row
                        Container(
                          margin: EdgeInsets.only(top: height*.006),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              /// Card 1
                              Column(
                                children: [
                                  Card(
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(width*.0),
                                      child: Image.asset('assets/images/home/venue.png',
                                        height: height*.16,
                                        width: width*.3,
                                      ),
                                    ),

                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: height*.014),
                                      child: Text('Venue')),
                                ],
                              ),
                              /// Card 2
                              Column(
                                children: [
                                  Card(
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                      side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(width*.04),
                                      child: Image.asset('assets/images/home/lodgings.png',
                                        height: height*.12,
                                        width: width*.2,
                                      ),
                                    ),

                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: height*.014),
                                      child:const Text('Lodgings')),
                                ],
                              ),
                              /// Card 3
                              Container(
                                // width: width*.33,
                                child: Column(
                                  children: [
                                    Card(
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(width*.04),
                                        child: Image.asset('assets/images/home/decoration1.png',
                                          height: height*.12,
                                          width: width*.2,
                                        ),
                                      ),

                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: height*.014),
                                        child:const Text('Decoration')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        /// Second Row
                        Container(
                          margin: EdgeInsets.only(top: height*.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Card 1
                              InkWell(
                                child: Column(
                                  children: [
                                    Card(
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(color: Color(0xffC75D38), width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(width*.04),
                                        child: Image.asset('assets/images/home/catering.png',
                                          color:const Color(0xffC75D38),
                                          height: height*.12,
                                          width: width*.2,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: height*.016),
                                        child:const Text('Catering',
                                        style: TextStyle(
                                          color: Color(0xffC75D38)
                                        ),
                                        )),
                                  ],
                                ),
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const CateringScreen()));
                                },
                              ),
                              /// Card 2
                              Column(
                                children: [
                                  Card(
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                      side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(width*.04),
                                      child: Image.asset('assets/images/home/camera.png',
                                        height: height*.12,
                                        width: width*.2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: height*.016),
                                      child:const Text('Photoshoot')),
                                ],
                              ),
                              /// Card 3
                              Column(
                                children: [
                                  Card(
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                      side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(width*.04),
                                      child: Image.asset('assets/images/home/fitness.png',
                                        height: height*.12,
                                        width: width*.2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: height*.016),
                                      child:const Text('Fitness')),
                                ],
                              ),
                            ],
                          ),
                        ),
                        /// Third Row
                        Container(
                          margin: EdgeInsets.only(top: height*.02),
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
                                        side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(width*.04),
                                        child: Image.asset('assets/images/home/priest1.png',
                                          height: height*.12,
                                          width: width*.2,
                                        ),
                                      ),

                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: height*.014),
                                        child:const Text('Priest')),
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
                                        side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(width*.04),
                                        child: Image.asset('assets/images/home/trans.webp',
                                          height: height*.12,
                                          width: width*.2,
                                        ),
                                      ),

                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: height*.014),
                                        child:const Text('Transportation')),
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
                                        side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(width*.04),
                                        child: Image.asset('assets/images/home/jewe.png',
                                          height: height*.12,
                                          width: width*.2,
                                        ),
                                      ),

                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: height*.014),
                                        child:const Text('Jewellery')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        /// Forth Row
                        Container(
                          margin: EdgeInsets.only(top: height*.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Card 1
                              Container(
                                // width: width*.33,
                                child: Column(
                                  children: [
                                    Card(
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(width*.04),
                                        child: Image.asset('assets/images/home/gift.png',
                                          height: height*.12,
                                          width: width*.2,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: height*.016),
                                        child:const Text('Gifts')),
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
                                        side:const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(width*.04),
                                        child: Image.asset('assets/images/home/entertain-1.png',
                                          height: height*.12,
                                          width: width*.2,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: height*.016),
                                        child:const Text('Entertainment')),
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
                                        side: const BorderSide(color: Color(0xffB7B7B7), width: 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(width*.04),
                                        child: Image.asset('assets/images/home/vaca.png',
                                          height: height*.12,
                                          width: width*.2,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: height*.016),
                                        child:const Text('Vacation')),
                                  ],
                                ),
                              ),
                            ],
                          ),
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

