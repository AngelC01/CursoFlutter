import 'package:flutter/material.dart';

class Screnn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Header(
              height: 250,
              username: "rita.gordon",
              backgroundAsset: 'assets/portada.jpg',
              userAsset: 'assets/Rita.jpg',
            ),
            Connections(
              followers: 3925,
              following: 128,
            ),
            Description(
              text: 'udwqhidqwuhdiqwudhqwihqwduiqwhdiuqwhduqwduqwhi',
            )
          ],
        ),
      ),
    );
  }
}


class Description extends StatelessWidget {
  final String text;
  Description({

    Key key,
    @required this.text,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: (Text(this.text)),
    );
  }
}



class Connections extends StatelessWidget {
  final int following, followers;
  const Connections({
    Key key,
    @required this.followers,
    @required this.following,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(50, 0, 255, 0),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Connection(
            text: 'following',
            number: this.following,
          ),
          Connection(
            text: 'followers',
            number: this.followers,
          ),
        ],
      ),
    );
  }
}

class Connection extends StatelessWidget {
  final String text;
  final int number;
  const Connection({
    Key key,
    @required this.text,
    @required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: Color.fromARGB(140, 0, 0, 0),
    );
    return Column(
      children: <Widget>[
        Text(
          this.text.toUpperCase(),
          style: style.copyWith(fontSize: 11),
        ),
        Text(
          '${this.number}',
          style: style.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  final double height;
  final String backgroundAsset;
  final String userAsset;
  final String username;

  const Header({
    this.height = 200,
    @required this.backgroundAsset,
    @required this.userAsset,
    @required this.username,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      height: this.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.backgroundAsset),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          UserPhoto(
            assetImage: this.userAsset,
            size: 100,
          ),
          Text(
            '@${this.username}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class UserPhoto extends StatelessWidget {
  final String assetImage;
  final double size;

  const UserPhoto({
    Key key,
    @required this.assetImage,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.assetImage),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 4,
        ),
      ),
      margin: EdgeInsets.only(bottom: 5),
    );
  }
}

void main() {
  runApp(Screnn());
}
