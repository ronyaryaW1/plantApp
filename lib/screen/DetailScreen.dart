import 'package:emarket/model/recomendation.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Recomendation data;

  DetailScreen({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(data.image),
                SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          SaveButton()
                        ],
                      )),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                data.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                data.description,
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment(0.9, 0.0),
              child: FavoriteButton(),
            )
          ],
        ),
      )),
    );
  }
}

class SaveButton extends StatefulWidget {
  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool saved = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(saved ? Icons.bookmark : Icons.bookmark_border,
          color: Colors.red),
      onPressed: () {
        setState(() {
          saved = !saved;
        });
      },
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        child: IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
          ),
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
        ));
  }
}
