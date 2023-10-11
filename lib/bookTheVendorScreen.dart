import 'package:final_project/wishlistScreen.dart';
import 'package:flutter/material.dart';

class BookTheVendor extends StatelessWidget {
  const BookTheVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookTheVendorSTF(),
    );
  }
}
class BookTheVendorSTF extends StatefulWidget {
  const BookTheVendorSTF({Key? key}) : super(key: key);

  @override
  State<BookTheVendorSTF> createState() => _BookTheVendorSTFState();
}

class _BookTheVendorSTFState extends State<BookTheVendorSTF> {
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
              title: Text('My Vendor',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: IconButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const WishlistScreen()));
                  },
                  icon: Icon(Icons.arrow_back_outlined,
                    color: Colors.white,
                  )),
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

          /// Select Vendor
          Container(
            child: Row(
              children: [
                /// Image
                Container(
                  margin: EdgeInsets.only(top: height*.02),
                  width: width*.32,
                  height: height*.16,
                  child: Card(
                    elevation: 6.0,
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset('assets/images/catering/food-7.webp',
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
                /// Text
                Container(
                  width: width*.68,
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
                                margin: EdgeInsets.only(left: width*.02, top: height*.011,),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: width*.01),
                                      child: Icon(Icons.location_city_outlined,
                                        // color: Colors.yellow.shade600,
                                        size: 16,
                                      ),
                                    ),
                                    Text('Lahore',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width*.02, top: height*.009),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Activity Pending',
                                      style: TextStyle(
                                          fontSize: 11,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.01),
                                      child: Text('Finalize on Desserts',
                                      style: TextStyle(
                                        color: Colors.green.shade400,
                                        fontSize: 11,
                                      ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width*.02, top: height*.009, bottom: height*.008),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Next Task',
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 11,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: width*.02),
                                      child: Text('Make an Advance Payment',
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: width,
                                height: height*.0024,
                                color: Colors.grey.shade500,
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
          ),

          /// Buttons
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: width*.01),
                width: width*.42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // padding: EdgeInsets.symmetric(horizontal: width*.08),
                      shape: RoundedRectangleBorder(side: BorderSide(
                        color: Color(0xffC75D38),
                        width: width*.002,
                        style: BorderStyle.solid,
                      ),borderRadius: BorderRadius.circular(4),
                      )
                  ),
                  onPressed: (){},
                  child: Text('Track Progress',
                    style: TextStyle(
                      color: Color(0xffC75D38),
                    ),
                  ),
                ),
              ),
              Container(
                width: width*.54,
                margin: EdgeInsets.only(left: width*.02),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffC75D38),
                  ),
                  onPressed: (){},
                  child: Text('Call The Vendor'),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

