import 'package:emarket/screen/DetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:emarket/model/recomendation.dart';

class HomeScreen extends StatelessWidget {
  final name;

  HomeScreen({@required this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: Text(
            'Halo $name',
            style:
                TextStyle(height: 3, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final Recomendation data = recomendationList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(data: data);
                }));
              },
              child: Container(
                width: size.width * 0.4,
                margin: EdgeInsets.only(top: 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            data.image,
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                data.title,
                                style: TextStyle(fontSize: 16.0),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(data.country),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: recomendationList.length,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        // onTap: ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favourite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          )
        ],
      ),
    );
  }
}
