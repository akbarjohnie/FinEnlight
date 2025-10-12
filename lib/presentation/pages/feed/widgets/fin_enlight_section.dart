import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KidsFinanceSection extends StatelessWidget {
  const KidsFinanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/logo_bar/logo.svg',
              width: 44,
              height: 30,
            ),
            const SizedBox(width: 8),
            Text(
              'FIN ENLIGHT',
              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}