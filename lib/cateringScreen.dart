
import 'package:final_project/cateringSliderScreen.dart';
import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';


class CateringScreen extends StatelessWidget {
  const CateringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CateringScreenSTF(),
    );
  }
}

class CateringScreenSTF extends StatefulWidget {
  const CateringScreenSTF({Key? key}) : super(key: key);

  @override
  State<CateringScreenSTF> createState() => _CateringScreenSTFState();
}

class _CateringScreenSTFState extends State<CateringScreenSTF> {
  late double width;
  late double height;

  List<String>ProductNameList=[
    'The Creative Kitchen',
    'Russian Salad',
    'Chinese Food',
    'Beef Special',
    'Vegetarian Kabeb',
    'Chicken Biryani',
    'Zarda Special',
    'Chana Chaat'
  ];

  List<int>ProductRatingList=[
    4,
    5,
    3,
    2,
    5,
    4,
    3,
    5
  ];

  List<int>ProductReviewsList=[
    487,
    523,
    323,
    222,
    512,
    424,
    323,
    523
  ];

  List<String>ProductImageList=[
    'assets/images/home/food.webp',
    'assets/images/catering/Russian-1.jpg',
    'assets/images/catering/chines-2.jpg',
    'assets/images/catering/beef2.jpg',
    'assets/images/catering/kaba-1.jpg',
    'assets/images/catering/biryani.webp',
    'assets/images/catering/zarda-3.jpg',
    'assets/images/catering/chana.jpg'
  ];

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
              title: Text('Catering',
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

          /// Search Bar
          Container(
            // width: width,
            // height: height*.08,
            // margin: EdgeInsets.only(top: height*.002),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: Offset(4,2), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade600
                  ),
                ),
                hintText: 'Search Vendors',
                prefixIcon: Icon(Icons.search,
                  color: Color(0xffC75D38),
                ),
              ),
            ),
          ),

          /// List
          Container(
            width: width,
            height: height*.796,
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, index){
                  return Container(
                    /// fisrt dishes
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/home/food.webp',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('The Creative Kitchen',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('4.9'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('456'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/Russian-1.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Russian Salad',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('4.2'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('894'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/chines-2.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Chinese Food',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('3.8'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('436'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/beef2.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Beef Special',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('3.5'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('239'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/kaba-1.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Vegetarian Kabeb',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('4.7'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('897'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/biryani.webp',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Chicken Biryani',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('5.0'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('989'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/zarda-3.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Zadar Special',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('3.0'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('465'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/chana.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Chana Chaat',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('4.1'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('769'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/home/food.webp',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('The Creative Kitchen',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('4.9'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('456'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/Russian-1.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Russian Salad',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('4.2'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('894'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/chines-2.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Chinese Food',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('3.8'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('436'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/beef2.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Beef Special',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('3.5'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('239'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/kaba-1.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Vegetarian Kabeb',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('4.7'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('897'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/biryani.webp',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Chicken Biryani',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('5.0'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('989'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/zarda-3.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Zadar Special',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('3.0'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('465'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Iamge
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: height*.02),
                                width: width*.38,
                                height: height*.2,
                                child: Card(
                                  elevation: 6.0,
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.asset('assets/images/catering/chana.jpg',
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CateringSliderScreen())
                                );
                              },
                            ),
                            Container(
                              width: width*.6,
                              margin: EdgeInsets.only(top: height*.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// The Creative Kitchen
                                  Container(
                                    child: Card(
                                      elevation: 4.0,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.01),
                                            child: Text('Chana Chaat',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('4.1'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Icon(Icons.star,
                                                    color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('769'),
                                                Container(
                                                  margin: EdgeInsets.only(left: width*.01),
                                                  child: Text('Reviews'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.006),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: width*.01),
                                                  child: Icon(Icons.location_city_outlined,
                                                    // color: Colors.yellow.shade600,
                                                    size: 18,
                                                  ),
                                                ),
                                                Text('Lahore'),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.008),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ],
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

