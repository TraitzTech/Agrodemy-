import 'package:Agrodemy/const/color.dart';
import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class AgeSelectionPage extends StatefulWidget {
  const AgeSelectionPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AgeSelectionPageState createState() => _AgeSelectionPageState();
}

class _AgeSelectionPageState extends State<AgeSelectionPage> {
  int selectedAgeRange = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover
            ),
            
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
               Text(
                'Your Age?',
                style: TextStyle(
                  fontSize: 50,
                  color: white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Mairy'
                  ),
              ),
              const SizedBox(height: 5,),
              Text(
                'Help us direct the best lessons for you',
                style: TextStyle(
                  fontSize: 20,
                  color: white,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Hind Madurai',
                ),
                ),]
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 350,
                    decoration:  BoxDecoration(
                      color: black,
                      borderRadius: const BorderRadius.all(Radius.circular(80))
                    ),
                    child: ListTile(
                      title: const Center(child: Text('6 - 12')),
                      leading: Radio(
                        fillColor: WidgetStatePropertyAll(white),
                        value: 0,
                        groupValue: selectedAgeRange,
                        onChanged: (value) {
                          setState(() {
                            selectedAgeRange = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: const BorderRadius.all(Radius.circular(80))
                    ),
                    child: ListTile(
                      title: const Center(child: Text('13 - 20')),
                      leading: Radio(
                        fillColor: WidgetStatePropertyAll(white),
                        value: 1,
                        groupValue: selectedAgeRange,
                        onChanged: (value) {
                          setState(() {
                            selectedAgeRange = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: const BorderRadius.all(Radius.circular(80))
                    ),
                    child: ListTile(
                      title: const Center(child: Text('21+')),
                      leading: Radio(
                        fillColor: WidgetStatePropertyAll(white),
                        value: 2,
                        groupValue: selectedAgeRange,
                        onChanged: (value) {
                          setState(() {
                            selectedAgeRange = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(black)
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: white,
                        fontFamily: 'Hind Madurai'
                        ),
                      ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(green)
                    ),
                    onPressed: selectedAgeRange != -1 ? () {
                      switch (selectedAgeRange) {
                        case 0:
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const MyDashboard())
                          );
                          break;
                        case 1:
                           Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const MyDashboard())
                          );
                          break;
                        case 2:
                         Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const MyDashboard())
                          );
                          break;
                      }
                    } : null,
                    child:  Text(
                      'Confirm',
                      style: TextStyle(
                        color: white,
                        fontFamily: 'Hind Madurai'
                        ),
                      ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
