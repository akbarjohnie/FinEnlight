import 'package:flutter/material.dart';

class ExpenseControlSection extends StatelessWidget {
  final int lessonsCount;
  final String duration;

  const ExpenseControlSection({
    super.key,
    required this.lessonsCount,
    required this.duration,
  });

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
              'Контролирование расходов',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Курс для более точного отслеживания расходов и доходов',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 8),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.play_circle_outline, color: Colors.black),
              title: Text('Расходы'),
              subtitle: Text('$lessonsCount урока по $duration'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.videocam, color: Colors.grey),
                  Icon(Icons.mic, color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.play_circle_outline, color: Colors.black),
              title: Text('Доходы'),
              subtitle: Text('$lessonsCount урока по $duration'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.videocam, color: Colors.grey),
                  Icon(Icons.mic, color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}