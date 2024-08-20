import 'package:Agrodemy/screens/lesson_screen.dart';
import 'package:Agrodemy/utils/DashboardScreenUtils/lesson_details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showLessonDetail(BuildContext context, String lessonTitle, VoidCallback onContinue) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return LessonDetailSheet(
          lessonTitle: lessonTitle,
          onContinue: onContinue,
        );
      },
    );
  }

  void _continueLesson1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LessonScreen(title: 'Lesson 1', nextScreen: Placeholder(),)),
    );
  }

  void _continueLesson2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LessonScreen(title: 'Lesson 2', nextScreen: Placeholder(),)),
    );
  }

  void _continueLesson3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LessonScreen(title: 'Lesson 3', nextScreen: Placeholder(),)),
    );
  }

  void _continueLesson4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LessonScreen(title: 'Lesson 4', nextScreen: Placeholder(),)),
    );
  }

  void _continueLesson5(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LessonScreen(title: 'Lesson 5', nextScreen: Placeholder(),)),
    );
  }

  void _continueLesson6(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LessonScreen(title: 'Lesson ', nextScreen: Placeholder(),)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
     final width = MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                height: 800.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Land.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: height * 0.03,
                left: width * 0.45,
                child: IconButton(
                  onPressed: () => _showLessonDetail(context, 'Lesson 1', () => _continueLesson1(context)),
                  icon: const Icon(Icons.check_circle),
                  color: Colors.green,
                  iconSize: 70.0,
                ),
              ),
              Positioned(
                top: height * 0.25,
                left: width * 0.7,
                child: IconButton(
                  onPressed: () => _showLessonDetail(context, 'Lesson 2', () => _continueLesson2(context)),
                  icon: const Icon(Icons.check_circle),
                  color: Colors.green,
                  iconSize: 70.0,
                ),
              ),
              Positioned(
                top: height * 0.4,
                left: width * 0.15,
                child: IconButton(
                  onPressed: () => _showLessonDetail(context, 'Lesson 3', () => _continueLesson3(context)),
                  icon: const Icon(Icons.lock),
                  color: Colors.grey,
                  iconSize: 70.0,
                ),
              ),
              Positioned(
                top: height * 0.6,
                left: width * 0.4,
                child: IconButton(
                  onPressed: () => _showLessonDetail(context, 'Lesson 4', () => _continueLesson4(context)),
                  icon: const Icon(Icons.lock),
                  color: Colors.green,
                  iconSize: 70.0,
                ),
              ),
              Positioned(
                top: height * 0.7,
                left: width * 0.8,
                child: IconButton(
                  onPressed: () => _showLessonDetail(context, 'Lesson 5', () => _continueLesson5(context)),
                  icon: const Icon(Icons.check_circle),
                  color: Colors.green,
                  iconSize: 70.0,
                ),
              ),
              Positioned(
                top: height * 0.8,
                left: width * 0.25,
                child: IconButton(
                  onPressed: () => _showLessonDetail(context, 'Lesson 6', () => _continueLesson6(context)),
                  icon: const Icon(Icons.lock),
                  color: Colors.green,
                  iconSize: 70.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
