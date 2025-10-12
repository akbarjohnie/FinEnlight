import 'package:fin_enlight/presentation/pages/feed/widgets/lesson.dart';
import 'package:flutter/material.dart';

class FinancialLiteracySection extends StatelessWidget {
  final List<Lesson> lessons;

  const FinancialLiteracySection({super.key, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Основы финансовой грамотности',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Курс для быстрого старта в финансовой грамотности',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 8),
            ...lessons.map((lesson) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.play_circle_outline, color: Colors.black),
                title: Text(lesson.title),
                subtitle: Text(lesson.duration),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.videocam, color: Colors.grey),
                    Icon(Icons.mic, color: Colors.grey),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}