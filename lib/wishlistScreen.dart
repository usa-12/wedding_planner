import 'package:final_project/bookTheVendorScreen.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: WishlistScreenSTF(),
    );
  }
}

class WishlistScreenSTF extends StatefulWidget {
  const WishlistScreenSTF({Key? key}) : super(key: key);

  @override
  State<WishlistScreenSTF> createState() => _WishlistScreenSTFState();
}

class _WishlistScreenSTFState extends State<WishlistScreenSTF> {
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
              title: Text('Wishlist',
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
                    icon: Icon(Icons.filter_alt_outlined,
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

          /// Second Portion Card List View Builder
          Container(
            width: width,
            height: height*.79,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, index){
                  return Column(
                    children: [
                      /// List Wishlist
                      Container(
                        child: Row(
                          children: [
                            /// Image
                            Column(
                              children: [
                                Container(
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
                                        child: Image.asset('assets/images/catering/food-4.jpg',
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                ),
                                /// Botton
                                Container(
                                  width: width*.35,
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
                                    child: Text('\$ 35000/-',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /// Text Reviews
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.028),
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
                                        Text('892'),
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
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.02),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                  /// Botton
                                  Container(
                                    width: width*.58,
                                    margin: EdgeInsets.only(left: width*.02),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffC75D38),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const BookTheVendor()));
                                      },
                                      child: Text('Book The Vendor'),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.01),
                        width: width,
                        height: height*.0026,
                        color: Colors.grey.shade400,
                      ),
                      /// Second Row
                      Container(
                        child: Row(
                          children: [
                            /// Image
                            Column(
                              children: [
                                Container(
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
                                        child: Image.asset('assets/images/catering/chines-1.jpg',
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                ),
                                /// Botton
                                Container(
                                  width: width*.35,
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
                                    child: Text('\$ 23000/-',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /// Text Reviews
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.028),
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
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.02),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                  /// Botton
                                  Container(
                                    width: width*.58,
                                    margin: EdgeInsets.only(left: width*.02),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffC75D38),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const BookTheVendor()));
                                      },
                                      child: Text('Book The Vendor'),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.01),
                        width: width,
                        height: height*.0026,
                        color: Colors.grey.shade400,
                      ),

                      ///Third Row
                      Container(
                        child: Row(
                          children: [
                            /// Image
                            Column(
                              children: [
                                Container(
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
                                /// Botton
                                Container(
                                  width: width*.35,
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
                                    child: Text('\$ 13000/-',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /// Text Reviews
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.028),
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
                                        Text('980'),
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
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.02),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                  /// Botton
                                  Container(
                                    width: width*.58,
                                    margin: EdgeInsets.only(left: width*.02),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffC75D38),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const BookTheVendor()));
                                      },
                                      child: Text('Book The Vendor'),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.01),
                        width: width,
                        height: height*.0026,
                        color: Colors.grey.shade400,
                      ),

                      ///Forth Row
                      Container(
                        child: Row(
                          children: [
                            /// Image
                            Column(
                              children: [
                                Container(
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
                                /// Botton
                                Container(
                                  width: width*.35,
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
                                    child: Text('\$ 12000/-',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /// Text Reviews
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.028),
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
                                        Text('4.4'),
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
                                        Text('678'),
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
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.02),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                  /// Botton
                                  Container(
                                    width: width*.58,
                                    margin: EdgeInsets.only(left: width*.02),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffC75D38),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const BookTheVendor()));
                                      },
                                      child: Text('Book The Vendor'),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.01),
                        width: width,
                        height: height*.0026,
                        color: Colors.grey.shade400,
                      ),

                      ///Fifth Row
                      Container(
                        child: Row(
                          children: [
                            /// Image
                            Column(
                              children: [
                                Container(
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
                                /// Botton
                                Container(
                                  width: width*.35,
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
                                    child: Text('\$ 24000/-',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /// Text Reviews
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.028),
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
                                        Text('3.6'),
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
                                        Text('509'),
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
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.02),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                  /// Botton
                                  Container(
                                    width: width*.58,
                                    margin: EdgeInsets.only(left: width*.02),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffC75D38),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const BookTheVendor()));
                                      },
                                      child: Text('Book The Vendor'),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.01),
                        width: width,
                        height: height*.0026,
                        color: Colors.grey.shade400,
                      ),

                      ///Sixth Row
                      Container(
                        child: Row(
                          children: [
                            /// Image
                            Column(
                              children: [
                                Container(
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
                                        child: Image.asset('assets/images/catering/v-kabab.jpg',
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                ),
                                /// Botton
                                Container(
                                  width: width*.35,
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
                                    child: Text('\$ 42000/-',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /// Text Reviews
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.028),
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
                                        Text('4.5'),
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
                                        Text('748'),
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
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.02),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                  /// Botton
                                  Container(
                                    width: width*.58,
                                    margin: EdgeInsets.only(left: width*.02),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffC75D38),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const BookTheVendor()));
                                      },
                                      child: Text('Book The Vendor'),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.01),
                        width: width,
                        height: height*.0026,
                        color: Colors.grey.shade400,
                      ),

                      ///Seventh Row
                      Container(
                        child: Row(
                          children: [
                            /// Image
                            Column(
                              children: [
                                Container(
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
                                /// Botton
                                Container(
                                  width: width*.35,
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
                                    child: Text('\$ 10000/-',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /// Text Reviews
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.028),
                                    child: Text('Zarda Special',
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
                                        Text('3.2'),
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
                                        Text('369'),
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
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.02),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                  /// Botton
                                  Container(
                                    width: width*.58,
                                    margin: EdgeInsets.only(left: width*.02),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffC75D38),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const BookTheVendor()));
                                      },
                                      child: Text('Book The Vendor'),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.01),
                        width: width,
                        height: height*.0026,
                        color: Colors.grey.shade400,
                      ),

                      ///Eight Row
                      Container(
                        child: Row(
                          children: [
                            /// Image
                            Column(
                              children: [
                                Container(
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
                                        child: Image.asset('assets/images/catering/beef.jpg',
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                ),
                                /// Botton
                                Container(
                                  width: width*.35,
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
                                    child: Text('\$ 25000/-',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            /// Text Reviews
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.028),
                                    child: Text('Meton Chari',
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
                                        Text('829'),
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
                                  Container(
                                    margin: EdgeInsets.only(left: width*.02, top: height*.006, bottom: height*.02),
                                    child: Text('Premium Partner',
                                      style: TextStyle(
                                        color: Color(0xffC75D38),
                                      ),
                                    ),
                                  ),
                                  /// Botton
                                  Container(
                                    width: width*.58,
                                    margin: EdgeInsets.only(left: width*.02),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffC75D38),
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const BookTheVendor()));
                                      },
                                      child: Text('Book The Vendor'),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*.02, vertical: height*.01),
                        width: width,
                        height: height*.0026,
                        color: Colors.grey.shade400,
                      ),
                    ],
                  );
                }),
          ),


        ],
      ),
    );
  }
}

