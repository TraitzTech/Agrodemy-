import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

class LessonScreen extends StatelessWidget {
  final String title;
   final Widget nextScreen;
  const LessonScreen({super.key, required this.title, required this.nextScreen});



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/agrodemy_illustrations.png'),
          fit: BoxFit.fill,
          ),
        ),
        child:  SafeArea(
          top: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('assets/images/flower.png', width: 20, height: 20,),
                    Row(
                    mainAxisSize: MainAxisSize.min,
                    children:[
                      const Icon(Icons.favorite, color: Colors.red,),
                       Text('10', style: TextStyle(color: white),)
                    ]
                    )
                ],
              ),

              Container(
                height: height*0.4,
                width: width*0.8,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Text(title,
                     style: TextStyle(color: green, fontFamily: 'Mairy', fontSize: 50, fontWeight: FontWeight.w700)),
                    Container(
                      color: blue,
                      height: height*0.2,
                      width: width*0.5,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => nextScreen)
                      );
                    },
                    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(green)),
                     child: Text('Kick off lesson',
                      style:TextStyle(color: white) ,))

                  ]
                ),

              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   ContainerClass(
                    color: blacknav,
                     width: 55,
                      height: 30,
                        text: 'Plant'),
                    ContainerClass(
                    color: blacknav,
                     width: 55,
                      height: 30,
                        text: 'Dig'),
                      
                      ContainerClass(
                    color: blacknav,
                     width: 55,
                      height: 30,
                        text: 'Cover')
                    
                  ]
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}



class ContainerClass extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double height;
  const ContainerClass({super.key, required this.color, required this.width, required this.height, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
      child: Center(
        child: Text(text,
         style: TextStyle(color: white),),
      ));
  }
}