import 'package:flutter/material.dart';

class LastLessonSection extends StatelessWidget {
  final String lessonTitle;
  final int completedLessons;
  final int totalLessons;

  const LastLessonSection({
    super.key,
    required this.lessonTitle,
    required this.completedLessons,
    required this.totalLessons,
  });

  @override
  Widget build(BuildContext context) {
    final progress = completedLessons / totalLessons;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Последний урок:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.play_circle_outline, color: Colors.black),
              title: Text(
                lessonTitle,
                style: TextStyle(
                  color: Color.fromRGBO(29, 27, 32, 1.0),
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  height: 1.5,
                ),
              ),
              subtitle: Text(
                '$completedLessons из $totalLessons уроков',
                style: TextStyle(
                  color: Color.fromRGBO(73, 69, 78, 1.0),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  height: 1.4,
                ),
              ),
              trailing: SizedBox(
                width: 100,
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.grey[300],
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}