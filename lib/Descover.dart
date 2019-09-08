import 'package:flutter/material.dart';

class Descover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFa05dce),
      body: Stack(
        children: <Widget>[
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/user.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.search, color: Colors.white, size: 31),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Discover',
                              style: TextStyle(color: Colors.white, fontSize: 27),
                            )
                          ],
                        ),
                        Icon(Icons.add_circle_outline, color: Colors.white, size: 31)
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 12, left: 21),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Friends',
                            style: TextStyle(
                                color: Colors.black.withOpacity(.7),
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 120,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              story('Hossin', 'assets/user.png'),
                              story('Mary', 'assets/person1.jpg'),
                              story('Nat', 'assets/person2.jpg'),
                              story('Stella', 'assets/person3.jpg'),
                              story('Yassine', 'assets/person1.jpg'),
                              story('Hossin', 'assets/user.png'),
                            ],
                          ),
                        ),
                        Text('Subsciptions',
                            style: TextStyle(
                                color: Colors.black.withOpacity(.7),
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 222,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              subscription('assets/1.jpg'),
                              subscription('assets/2.jpg'),
                              subscription('assets/3.jpg'),
                              subscription('assets/4.jpg'),
                            ],
                          ),
                        ),
                        Text('For You',
                            style: TextStyle(
                                color: Colors.black.withOpacity(.7),
                                fontWeight: FontWeight.bold,
                                fontSize: 22)),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 222,
                          child: Row(
                            children: <Widget>[
                              Expanded(child: foryou('assets/1.jpg')),
                              Expanded(child: foryou('assets/1.jpg')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 21),
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(.2),offset: Offset(3, 19),blurRadius: 12,spreadRadius: 2)
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.chat_bubble,color: Colors.white,),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 6)
                    ),
                  ),
                  Icon(Icons.chat_bubble,color: Colors.white,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget story(String name, image) {
  return Padding(
    padding: const EdgeInsets.only(right: 17),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xFFa05dce), width: 2),
          ),
          child: ClipOval(
              child: Image.asset(
            image,
            width: 75,
            height: 75,
            fit: BoxFit.cover,
          )),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}

Widget subscription(String image) {
  return Padding(
    padding: const EdgeInsets.only(right: 12),
    child: Stack(
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 155,
              height: 211,
              fit: BoxFit.cover,
            )),
        Positioned(
            bottom: 12,
            child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(12),
                child: Text(
                  'How to be \nLess  Awkward',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ],
    ),
  );
}

Widget foryou(String image) {
  return Padding(
    padding: const EdgeInsets.only(right: 12),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          height: 251,
          fit: BoxFit.cover,
        )),
  );
}
