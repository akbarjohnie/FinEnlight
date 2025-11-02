import 'package:auto_route/auto_route.dart';
import 'package:fin_enlight/domain/domain.dart';
import 'package:fin_enlight/presentation/pages/courses/widgets/expense_control_section.dart';
import 'package:fin_enlight/presentation/pages/courses/widgets/fin_enlight_section.dart';
import 'package:fin_enlight/presentation/pages/courses/widgets/financial_literacy_section.dart';
import 'package:fin_enlight/presentation/pages/courses/widgets/last_lesson.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            KidsFinanceSection(),
            SizedBox(height: 16),
            LastLessonSection(
              lessonTitle: 'Финансовые цели',
              completedLessons: 2,
              totalLessons: 3,
            ),
            SizedBox(height: 16),
            FinancialLiteracySection(
              lessons: [
                LessonEntity(title: 'История денег и их функции', duration: '4 урока по 10 минут'),
                LessonEntity(title: 'Деньги и банкноты мира', duration: '3 урока по 15 минут'),
                LessonEntity(title: 'Доходы и карманы деньги', duration: '6 уроков по 5 минут'),
              ],
            ),
            SizedBox(height: 16),
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