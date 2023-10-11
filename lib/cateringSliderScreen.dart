import 'package:final_project/cateringScreen.dart';
import 'package:final_project/wishlistScreen.dart';
import 'package:flutter/material.dart';

class CateringSliderScreen extends StatelessWidget {
  const CateringSliderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CateringSliderScreenSTF(),
    );
  }
}

class CateringSliderScreenSTF extends StatefulWidget {
  const CateringSliderScreenSTF({Key? key}) : super(key: key);

  @override
  State<CateringSliderScreenSTF> createState() => _CateringSliderScreenSTFState();
}

class _CateringSliderScreenSTFState extends State<CateringSliderScreenSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Card for Images & Text
          Container(
            child: Card(
              elevation: 6.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Images
                  Stack(
                    children: [
                      Container(
                        width: width,
                        height: height*.35,
                        child: Image.asset('assets/images/catering/food.webp',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> const CateringScreen()));
                          },
                          icon: const Icon(Icons.arrow_back_outlined,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  /// Taxt Lahori Food
                  Container(
                    margin: EdgeInsets.only(top: height*.016),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width*.02),
                          child: Text('Lahori Group',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text('4.6'),
                              Container(
                                margin: EdgeInsets.only(left: width*.008, right: width*.02),
                                child: Icon(Icons.star,
                                color: Colors.yellow.shade600,
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
                    margin: EdgeInsets.only(left: width*.02, top: height*.014),
                    child: Text('"The Most Trusted Partner" by Org'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height*.01, bottom: height*.024),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width*.02, right: width*.01),
                          child: Icon(Icons.location_city_outlined,
                          size: 16,
                          ),
                        ),
                        Text('Whitefiled, Lahore'),
                        Container(
                          margin: EdgeInsets.only(left: width*.04),
                          child: Text('(View on map)',
                          style: TextStyle(
                            fontSize: 11,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),

          /// Second Portion
          Container(
            margin: EdgeInsets.symmetric(vertical: height*.014, horizontal: width*.04),
            child: Row(
              children: [
                Text('Open Now ',
                style: TextStyle(
                  color: Colors.blue.shade600
                ),
                ),
                const Text(' | 7 AM - 11PM (Mon-Sun)',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: height*.006, horizontal: width*.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Get Contact Detail',
                  style: TextStyle(
                      // color: Colors.blue.shade600
                  ),
                ),
                Text('OR',
                  style: TextStyle(
                    // fontWeight: FontWeight.w600,
                  ),
                ),
                Text('Request For A Quote',
                  style: TextStyle(
                      color: Color(0xffC75D38),
                  ),
                ),
              ],
            ),
          ),
          /// Buttons
          Container(
            margin: EdgeInsets.only(top: height*.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: width*.12),
                    shape: RoundedRectangleBorder(side: BorderSide(
                      color: Color(0xffC75D38),
                      width: width*.002,
                      style: BorderStyle.solid,
                    ),borderRadius: BorderRadius.circular(4),
                    )
                  ),
                    onPressed: (){},
                    child: Row(
                      children: [
                        Text('Share',
                        style: TextStyle(
                          color: Color(0xffC75D38),
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width*.02),
                          child: Icon(Icons.share_outlined,
                          color: Color(0xffC75D38),
                            size: 18,
                          ),
                        )
                      ],
                    ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffC75D38),
                      // padding: EdgeInsets.symmetric(),
                  ),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WishlistScreen()));
                  },
                  child: Row(
                    children: [
                      Text('Add to wishlist',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.02),
                        child: Icon(Icons.favorite_border_outlined,
                          color: Color(0xffFFFFFF),
                          size: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.016),
            width: width,
            height: height*.002,
            color: Colors.grey.shade400,
          ),
          /// Price
          Container(
            margin: EdgeInsets.symmetric(vertical: height*.006, horizontal: width*.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Cost . ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text('Rs. 450 (Per plate)',
                      style: TextStyle(
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: width*.01),
                        child: Icon(Icons.menu_outlined,
                        color: Color(0xffC75D38),
                          size: 18,
                        ),
                      ),
                      Text('Menu',
                        style: TextStyle(
                          color: Color(0xffC75D38),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.016),
            width: width,
            height: height*.002,
            color: Colors.grey.shade400,
          ),
          /// Text Offer
          Container(
            margin: EdgeInsets.only(left: width*.04, right: width*.035),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height*.01, bottom: height*0.02),
                        child: Text('Offers',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ),
                      Container(
                        child: Text('View Details',
                          style: TextStyle(
                            color: Color(0xffC75D38),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: height*.01, top: height*.004),
                  child: Text('* 10% off on Desserts & Refreshments',
                    style: TextStyle(
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text('* Free welcome Drinks',
                  style: TextStyle(
                    // fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: height*.01, top: height*.01),
                  child: Text('* First 20 Customer special Offer',
                    style: TextStyle(
                      // fontWeight: FontWeight.w600,
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

