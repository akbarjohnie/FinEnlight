import 'package:auto_route/auto_route.dart';
import 'package:fin_enlight/core/core.dart';
import 'package:fin_enlight/presentation/pages/expense_manager/widgets/widgets.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExpenseManagerPage extends StatefulWidget {
  const ExpenseManagerPage({super.key});

  @override
  State<ExpenseManagerPage> createState() => _ExpenseManagerPageState();
}

class _ExpenseManagerPageState extends State<ExpenseManagerPage> {
  late final TextEditingController _expensesController = TextEditingController();
  static const int _gridCount = 12;

  @override
  void dispose() {
    _expensesController.dispose();
    super.dispose();
  }

  void _onNumTap(int value) {
    _expensesController.text = '${_expensesController.text}$value';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const P(horizontal: 60),
          child: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              SliverAdapter(
                child: TextFormField(
                  controller: _expensesController,
                  autocorrect: false,
                  enabled: false,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: AppColors.eerieBlack,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Введите сумму',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: AppColors.eerieBlack,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SliverSizedBox(height: 40),
              SliverGrid.builder(
                itemCount: _gridCount,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  if (index == 9) return const SizedBox.shrink();

                  if (index == 10) {
                    return NumpadElement(
                      numCount: 0,
                      onTap: _onNumTap,
                    );
                  }

                  if (index == 11) {
                    return IconButton(
                      onPressed: () {
                        setState(() {
                          _expensesController.text =
                              _expensesController.text.substring(0, _expensesController.text.length - 1);
                        });
                      },
                      icon: const Icon(
                        Icons.remove, // TODO: поставить другую иконку
                      ),
                    );
                  }

                  return NumpadElement(
                    numCount: index + 1,
                    onTap: _onNumTap,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
