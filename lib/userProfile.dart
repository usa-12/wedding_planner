import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';


class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserProfileSTF(),
    );
  }
}

class UserProfileSTF extends StatefulWidget {
  const UserProfileSTF({Key? key}) : super(key: key);

  @override
  State<UserProfileSTF> createState() => _UserProfileSTFState();
}

class _UserProfileSTFState extends State<UserProfileSTF> {
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
              title: Text('Hello',
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

          /// First Row User Image & Name
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Image
                Container(
                  width: width*.22,
                  height: height*.12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/descover/gift-1.jpg',
                      fit: BoxFit.cover,
                      )),
                ),

                /// Text Name
                Container(
                  margin: EdgeInsets.only(left: width*.04, right: width*.16,top: height*.004),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mubeen Mughal',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                      Text('The Bride',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffB7B7B7),
                        ),
                      ),
                      Text('Revati Weds Muslim',
                        style: TextStyle(

                        ),
                      ),
                      Text('on Aug 18th 20th 2022',
                        style: TextStyle(

                        ),
                      ),
                    ],
                  ),
                ),

                /// Icon
                Container(
                  child: Icon(Icons.more_vert_outlined),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width*.02),
            width: width,
            height: height*.002,
            color: Color(0xffB7B7B7),
          ),

          /// Second Row My Vendor
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Icon & Text
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        width: width*.08,
                        height: height*.03,
                        child: Icon(Icons.people_alt_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('My Vendors',
                        style: TextStyle(
                          fontSize: 14
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// Text & Side Arrow
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('4 Activities Scheduled',
                        style: TextStyle(
                          color: Color(0xffC75D38),
                          fontSize: 12
                        ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width*.02),
            width: width,
            height: height*.002,
            color: Color(0xffB7B7B7),
          ),

          /// Third Row My Task Planner
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Icon & Text
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        width: width*.08,
                        height: height*.03,
                        child: Icon(Icons.task_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('Task Planner',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// Text & Side Arrow
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('8 New Tesk Today',
                          style: TextStyle(
                              color: Color(0xffC75D38),
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios_outlined,
                          size: 20,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width*.02),
            width: width,
            height: height*.002,
            color: Color(0xffB7B7B7),
          ),

          /// Forth Row My Route
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Icon & Text
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        width: width*.08,
                        height: height*.03,
                        child: Icon(Icons.location_on_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('Route Guide',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// Text & Side Arrow
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('2 Guests Joined',
                          style: TextStyle(
                              color: Color(0xffC75D38),
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios_outlined,
                          size: 20,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width*.02),
            width: width,
            height: height*.002,
            color: Color(0xffB7B7B7),
          ),

          /// Fifth Row My My Wishlist
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Icon & Text
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        width: width*.08,
                        height: height*.03,
                        child: Icon(Icons.favorite_border_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('My Wishlist',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// Text & Side Arrow
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('2 Updates',
                          style: TextStyle(
                              color: Color(0xffC75D38),
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios_outlined,
                          size: 20,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width*.02),
            width: width,
            height: height*.002,
            color: Color(0xffB7B7B7),
          ),

          /// Sixth Row My Guest Collaboration
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Icon & Text
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        width: width*.08,
                        height: height*.03,
                        child: Icon(Icons.collections_bookmark_outlined
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('Guest Collaboration',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// Text & Side Arrow
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('2 New Requests',
                          style: TextStyle(
                              color: Color(0xffC75D38),
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios_outlined,
                          size: 20,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width*.02),
            width: width,
            height: height*.002,
            color: Color(0xffB7B7B7),
          ),

          /// Seventh Row My Gift Registry
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Icon & Text
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        width: width*.08,
                        height: height*.03,
                        child: Icon(Icons.card_giftcard_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('Gift Registry',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// Text & Side Arrow
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('2 Items Checked',
                          style: TextStyle(
                              color: Color(0xffC75D38),
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios_outlined,
                          size: 20,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width*.02),
            width: width,
            height: height*.002,
            color: Color(0xffB7B7B7),
          ),

          /// Eight Row My ChatRoom
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Icon & Text
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        width: width*.08,
                        height: height*.03,
                        child: Icon(Icons.mark_chat_unread_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('Family Chatroom',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// Text & Side Arrow
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('2Messages, 1Photo',
                          style: TextStyle(
                              color: Color(0xffC75D38),
                              fontSize: 12
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_ios_outlined,
                          size: 20,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(width*.02),
            width: width,
            height: height*.002,
            color: Color(0xffB7B7B7),
          ),

          /// Nine Row My LogOut
          Container(
            margin: EdgeInsets.all(width*.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Icon & Text
                Container(
                  child: Row(
                    children: [
                      /// Icon
                      Container(
                        width: width*.08,
                        height: height*.03,
                        child: Icon(Icons.logout_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Text('Log Out',
                          style: TextStyle(
                              fontSize: 14
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

