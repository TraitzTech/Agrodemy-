// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

class Today extends StatelessWidget {
const Today({ super.key });

  @override
  Widget build(BuildContext context){
    return ListView(
      children:  const [
        Tile(title: 'Benjamin', subtitle: 'tiny farmer'),
        Tile(title: 'Benjamin', subtitle: 'tiny farmer')
      ]
    );
  }
}





class Tile extends StatelessWidget {
  final String title;
  final String subtitle;

  const Tile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      focusColor: const Color.fromRGBO(0, 0, 0, 0.867),
      hoverColor: const Color.fromRGBO(0, 0, 0, 0.867),
      tileColor: black,
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/carrot.png'),
      ),
      title: Text(title, style: TextStyle(color: white)),
      subtitle: Text(subtitle, style: TextStyle(color: grey)),
      trailing:  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        CircleAvatar(
          backgroundColor: blacknav,
          radius: 15,
          child: Icon(Icons.star, color: green,)
          ),
          Text('15px', style: TextStyle(color: white))
      ],
      ),
    );
  }
}
