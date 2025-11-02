import 'package:auto_route/auto_route.dart';
import 'package:fin_enlight/presentation/pages/feed/widgets/expense_control_section.dart';
import 'package:fin_enlight/presentation/pages/feed/widgets/fin_enlight_section.dart';
import 'package:fin_enlight/presentation/pages/feed/widgets/financial_literacy_section.dart';
import 'package:fin_enlight/presentation/pages/feed/widgets/last_lesson.dart';
import 'package:fin_enlight/presentation/pages/feed/widgets/lesson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            KidsFinanceSection(),
            const SizedBox(height: 16),
            LastLessonSection(
              lessonTitle: 'Финансовые цели',
              completedLessons: 2,
              totalLessons: 3,
            ),
            const SizedBox(height: 16),
            FinancialLiteracySection(
              lessons: [
                Lesson(title: 'История денег и их функции', duration: '4 урока по 10 минут'),
                Lesson(title: 'Деньги и банкноты мира', duration: '3 урока по 15 минут'),
                Lesson(title: 'Доходы и карманы деньги', duration: '6 уроков по 5 минут'),
              ],
            ),
            const SizedBox(height: 16),
            ExpenseControlSection(
              lessonsCount: 2,
              duration: '20 минут',
            ),
          ],
        ),
      ),
    );
  }
}