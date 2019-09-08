import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.transparent),
                    child: BottomNavigationBar(
                      currentIndex: 0,
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), title: Text('Home')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), title: Text('Home')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), title: Text('Home'))
                      ],
                    ))),
          ],
        ),
      
    );
  }
}