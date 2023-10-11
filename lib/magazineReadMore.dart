import 'package:flutter/material.dart';

class MagazineReadMore extends StatelessWidget {
  const MagazineReadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MagazineReadMoreSTF(),
    );
  }
}

class MagazineReadMoreSTF extends StatefulWidget {
  const MagazineReadMoreSTF({Key? key}) : super(key: key);

  @override
  State<MagazineReadMoreSTF> createState() => _MagazineReadMoreSTFState();
}

class _MagazineReadMoreSTFState extends State<MagazineReadMoreSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(
        children: [
          /// Main Image
          Container(
            width: width,
            height: height*.4,
            child: Image.asset('assets/images/magazine/R4.jpeg',
            fit: BoxFit.cover,
            ),
          ),
          /// Icon
          Container(
            child: IconButton(
              icon: Icon(Icons.arrow_back_outlined,
              color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          /// Stack Button & Text
          Container(
            margin: EdgeInsets.only(top: height*.18, left: width*.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                      onPressed: (){},
                      child: Text('Decor Theme',
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 12
                      ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.01, left: width*.01),
                  width: width*.54,
                  child: Text('Gorgeous Greenhouse '
                      'Wedding Inspairation with '
                      'in-season plants and '
                      'electic decor',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                ),
              ],
            ),
          ),
          /// Circle Icon
          Container(
            margin: EdgeInsets.only(top: height*.36, left: width*.8),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Color(0xffC75D38),
              borderRadius: BorderRadius.circular(30)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: IconButton(
                icon: Icon(Icons.flag_outlined,
                color: Colors.white,
                ), onPressed: () {},
              ),
            ),
          ),

          /// Paragraph Detail & Button & Icons
          Container(
            margin: EdgeInsets.only(top: height*.42, left: width*.04),
            child: Column(
              children: [
                /// View icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.remove_red_eye_outlined,
                    size: 16,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*.008),
                      child: Text('3.5K',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*.02),
                      child: Icon(Icons.favorite_border_outlined,
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*.008),
                      child: Text('540',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
                /// Image Circle & Text & Icons
                Container(
                  margin: EdgeInsets.only(top: height*.014),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: width*.11,
                        height: height*.06,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(99),
                          child: Image.asset('assets/images/descover/deco_1.jpg',
                          fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Artificial',
                            style: TextStyle(
                              fontWeight: FontWeight.w600
                            ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: height*.002),
                              child: Text('2K followers',
                                style: TextStyle(
                                    fontSize: 11
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width*.42, top: height*.006),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.messenger_outline,
                            size: 20,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: width*.04),
                              child: Icon(Icons.share_outlined,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                /// paragraph
                Container(
                  margin: EdgeInsets.only(top: height*.03),
                  child: Text('"We kept the decor fresh and neutral, the better to '
                      'showcase the myriad artistic approaches '
                      'celebrated in my book, The Painters Wedding,"'
                      'says Kristy Rice, Momental Design artist, author, '
                      'and stylist. "I want to show couples how to fined '
                      'their wedding inspairation in ane artists '
                      'brushstroke, a weavers theard or a potters hand".'),
                ),
                Container(
                  margin: EdgeInsets.only(top: height*.04),
                  child: Text('"We kept the decor fresh and neutral, the better to '
                      'showcase the myriad artistic approaches '
                      'celebrated in my book, The Painters Wedding".'),
                ),
                ///Button
                Container(
                  width: width,
                  height: height*.08,
                  margin: EdgeInsets.only(top: height*.02, right: width*.02),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffC75D38),
                    ),
                    onPressed: () {},
                    child: Text('Continue Reading',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
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

