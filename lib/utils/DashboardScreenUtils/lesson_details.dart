
import 'package:flutter/material.dart';

class LessonDetailSheet extends StatelessWidget {
  final String lessonTitle;
  final VoidCallback onContinue;

  const LessonDetailSheet({
    super.key,
    required this.lessonTitle,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                lessonTitle,
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.green),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the modal
                },
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Container(
            height: 150.0,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: onContinue,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
            ),
            child: const Text(
              'Continue Lesson',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
