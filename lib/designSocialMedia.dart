import 'package:flutter/material.dart';

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SocialMediaScreenSTF(),
    );
  }
}

class SocialMediaScreenSTF extends StatefulWidget {
  const SocialMediaScreenSTF({Key? key}) : super(key: key);

  @override
  State<SocialMediaScreenSTF> createState() => _SocialMediaScreenSTFState();
}

class _SocialMediaScreenSTFState extends State<SocialMediaScreenSTF> {
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
          /// Top Bar
          Container(
            child: AppBar(
              backgroundColor: Color(0XffFFFFFF),
              title: Text('Piqobe',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),
              ),

              actions: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.settings,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.notifications_active_outlined,
                      color: Colors.black,
                    )),
              ],
            ),
          ),

          /// List View Horizantal
          Container(
            margin: EdgeInsets.symmetric(horizontal: width*.02),
            width: width,
            height: height*.2,
            // color: Colors.yellow,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 18,
                itemBuilder: (BuildContext context, index){
                  return Container(
                    // width: width*.33,
                    margin: EdgeInsets.only(top: height*.01),
                    child: Column(
                      children: [
                        Card(
                          elevation: 9.0,
                          color: Color(0xffC75D38),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(width*.006),
                            width: width*.21,
                            height: height*.11,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/images/descover/travel-2.jpg',
                                // height: height*.08,
                                // width: width*.16,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                        ),
                        Container(
                            margin: EdgeInsets.only(top: height*.01),
                            child: Text('Location',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                                  fontSize: 12
                            ),
                            )),
                      ],
                    ),
                  );
                }),
          ),

          /// List View Vertical
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: width*.02),
          //   width: width,
          //   height: height*.58,
          //   decoration: BoxDecoration(
          //     color: Colors.yellow,
          //     borderRadius: BorderRadius.circular(50)
          //   ),
          //   child: ListView.builder(
          //       scrollDirection: Axis.vertical,
          //       itemCount: 1,
          //       itemBuilder: (BuildContext context, index){
          //         return Container(
          //           height: height*.55,
          //           width: width*.8,
          //           decoration: BoxDecoration(
          //               color: Colors.grey,
          //               borderRadius: BorderRadius.circular(50)
          //           ),
          //           child: Column(
          //             children: [
          //               Card(
          //                 elevation: 9.0,
          //                 // child: Container(
          //                 //   // padding: EdgeInsets.all(width*.04),
          //                 //   child: Image.asset('assets/images/home/lodgings.png',
          //                 //   ),
          //                 // ),
          //
          //               ),
          //
          //             ],
          //           ),
          //         );
          //       }),
          // ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width*.02),
            width: width,
            height: height*.58,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(50)
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: height*.02),
                  width: width*.84,
                  height: height*.54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /// First Row
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Image
                            Container(
                              margin: EdgeInsets.only(left: width*.04, top: height*.02),
                              width: width*.24,
                              height: height*.11,
                              // decoration: BoxDecoration(
                              //     color: Colors.grey,
                              //     borderRadius: BorderRadius.circular(80)
                              // ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/images/descover/hotel.jpg',
                                fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            /// Text
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.034),
                                    child: Text('Stave Johnson',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.02),
                                    child: Text('30 Sec Age',
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            /// Icon
                            Container(
                              margin: EdgeInsets.only(top: height*.06, left: width*.1),
                              child: Icon(Icons.message_outlined,
                              size: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                      /// Slider Image
                      Container(
                        margin: EdgeInsets.only(top: height*.02),
                        width: width*.74,
                        height: height*.3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('assets/images/descover/destination.webp',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      /// Icons & Text
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /// 3 ICONS
                            Container(
                              margin: EdgeInsets.only(left: width*.06, top: height*.018),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.favorite,
                                  color: Colors.red.shade600,
                                  ),
                                  Container(
                                      margin: EdgeInsets.symmetric(horizontal: width*.016),
                                      child: Icon(Icons.sentiment_satisfied_alt_rounded)),
                                  Icon(Icons.share_outlined),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: width*.06),
                              child: Icon(Icons.bus_alert_sharp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height*.01, bottom: height*.0),
                        child: Text('This is Icons This is Icons',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /// Bottom Bar
          Container(
            margin: EdgeInsets.only(top: height*.009),
            height: height*.1,
            // color: Colors.white,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: height*.03),
                  child: Column(
                    children: [
                      Icon(Icons.home_outlined,
                        color: Color(0xffC75D38),
                        size: 32,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.01),
                  child: Icon(Icons.insert_emoticon_outlined,
                    // color: Color(0xffC75D38),
                    size: 32,
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: height*.01),
                  decoration: BoxDecoration(
                    color: Color(0xffC75D38),
                    borderRadius: BorderRadius.circular(99)
                  ),
                  child: Icon(Icons.add,
                    // color: Color(0xffC75D38),
                    size: 44,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.01),
                  child: Icon(Icons.search_rounded,
                    // color: Color(0xffC75D38),
                    size: 32,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.01),
                  child: Icon
                    (Icons.perm_identity_outlined,
                    // color: Color(0xffC75D38),
                    size: 32,
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

