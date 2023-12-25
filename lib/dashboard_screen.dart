import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  List cateNames = [
    "Classes",
    "Category",
    "Course",
    "Book Store",
    "Live Course",
    "LeaderBoard",
  ];

  List<Color> cateColors = [
    Color(0xFF6FE08D),
    Color(0xFFFFCF2F),
    Color(0xFF618DFD),
    Color(0xFFFC7F7F),
    Color(0xFFC884FB),
    Color(0xFF78E667),
  ];

  List<Icon> cateIcons = [
    Icon(Icons.video_library, color: Colors.white, size: 35,),
    Icon(Icons.category, color: Colors.white, size: 35,),
    Icon(Icons.assignment, color: Colors.white, size: 35,),
    Icon(Icons.store, color: Colors.white, size: 35,),
    Icon(Icons.play_circle_fill, color: Colors.white, size: 35,),
    Icon(Icons.emoji_events, color: Colors.white, size: 35,),
  ]; 

  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 10,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.32,
                  decoration: BoxDecoration( 
                    color: Color.fromARGB(255, 3, 192, 129),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Icon(Icons.sort,
                              color: Colors.white,
                              size: 40,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration( 
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("images/profile.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dear Alex",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Last Update: 18 nov 2023",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white54,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration( 
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration( 
                              border: InputBorder.none,
                              hintText: 'Search here...',
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.10),
                              ),
                              prefixIcon: Icon(Icons.search, size: 25),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.431,
                decoration: BoxDecoration( 
                  color: Color.fromARGB(255, 3, 192, 129),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.43,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: cateNames.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.3,
                          ),
                          itemBuilder: (context, index){
                            return Column(
                              children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration( 
                                  color: cateColors[index],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: cateIcons[index],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(cateNames[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),

                              ),
                              ),
                              ],
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}