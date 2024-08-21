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
    return Container(
         color: Colors.black,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double width = constraints.maxWidth;
                  double height = 1200.0; // You can adjust this height if needed
                  return Stack(
                    children: [
                      CustomPaint(
                        size: Size(width, height),
                        painter: CurvedPathPainter(),
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
                  );
                },
              ),
            ),
          ),
        ),
      );
  }
}



class CurvedPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Background color
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..color = Color(0xFF0F1624), // Dark background color
    );

    // Define the paint for the road (gray part) with increased stroke width
    Paint roadPaint = Paint()
      ..color = Color(0xFF3C4858)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.07; // Increased stroke width

    // Define the paint for the dashed center line with increased stroke width
    Paint dashedPaint = Paint()
      ..color = Colors.greenAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02; // Increased stroke width

    // Create the main path for the road
    Path mainPath = Path();
    mainPath.moveTo(size.width * 0.01, size.height); // Starting point at the bottom

    mainPath.quadraticBezierTo(
      size.width, size.height * 0.75,
      size.width, size.height * 0.8,
    );

    mainPath.quadraticBezierTo(
      size.width, size.height * 0.8,
      size.width * 0.97, size.height * 0.755,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.69, size.height * 0.76,
      size.width * 0.68, size.height * 0.75,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.64, size.height * 0.74,
      size.width * 0.57, size.height * 0.7,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.36, size.height * 0.59,
      size.width * 0.36, size.height * 0.5,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.36, size.height * 0.49,
      size.width * 0.38, size.height * 0.45,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.38, size.height * 0.43,
      size.width * 0.5, size.height * 0.4,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.5, size.height * 0.4,
      size.width * 0.7, size.height * 0.37,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.7, size.height * 0.375,
      size.width * 0.74, size.height * 0.34,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.74, size.height * 0.34,
      size.width * 0.74, size.height * 0.32,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.74, size.height * 0.32,
      size.width * 0.7, size.height * 0.3,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.7, size.height * 0.3,
      size.width * 0.5, size.height * 0.25,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.5, size.height * 0.25,
      size.width * 0.4, size.height * 0.22,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.4, size.height * 0.22,
      size.width * 0.38, size.height * 0.2,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.38, size.height * 0.2,
      size.width * 0.4, size.height * 0.19,
    );

    mainPath.quadraticBezierTo(
      size.width * 0.4, size.height * 0.18,
      size.width * 0.67, size.height * 0.12,
    );

    // Draw the road path
    canvas.drawPath(mainPath, roadPaint);

    // Create the dashed effect manually for the middle path
    Path dashPath = Path();
    double dashWidth = size.width * 0.05; // Increased dash width
    double dashSpace = size.width * 0.025; // Increased dash space
    double distance = 0.0;

    for (var pathMetric in mainPath.computeMetrics()) {
      while (distance < pathMetric.length) {
        final extractPath = pathMetric.extractPath(distance, distance + dashWidth);
        dashPath.addPath(extractPath, Offset.zero);
        distance += dashWidth + dashSpace;
      }
    }

    // Draw the dashed path in the middle
    canvas.drawPath(dashPath, dashedPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}