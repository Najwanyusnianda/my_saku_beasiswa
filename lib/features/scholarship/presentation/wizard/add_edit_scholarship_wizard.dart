// lib/features/scholarship/presentation/wizard/add_edit_scholarship_wizard.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'step_template_select.dart';

class AddEditScholarshipWizard extends ConsumerStatefulWidget {
  const AddEditScholarshipWizard({super.key});

  @override
  ConsumerState<AddEditScholarshipWizard> createState() =>
      _AddEditScholarshipWizardState();
}

class _AddEditScholarshipWizardState
    extends ConsumerState<AddEditScholarshipWizard> {
  final _pageCtrl = PageController();

  void _next() => _pageCtrl.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beasiswa Baru (1/5)')),
      body: PageView(
        controller: _pageCtrl,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          StepTemplateSelect(onNext: _next), // STEP 1
          const Placeholder(),               // STEP 2 dikerjakan nanti
          const Placeholder(),
          const Placeholder(),
          const Placeholder(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageCtrl.dispose();
    super.dispose();
  }
}
