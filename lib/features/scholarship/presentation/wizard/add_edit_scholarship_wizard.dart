// lib/features/scholarship/presentation/wizard/add_edit_scholarship_wizard.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart';
import 'package:my_saku_beasiswa/features/scholarship/application/add_form_provider.dart';
import '../../../../core/providers.dart';
// import app_database.dart';
import '../../../../data/local/app_database.dart';



//import step form
import 'step_template_select.dart';
import 'step_info_basic.dart';
import 'step_requirements.dart';
class AddEditScholarshipWizard extends ConsumerStatefulWidget {
  const AddEditScholarshipWizard({super.key});

  @override
  ConsumerState<AddEditScholarshipWizard> createState() =>
      _AddEditScholarshipWizardState();
}

class _AddEditScholarshipWizardState
    extends ConsumerState<AddEditScholarshipWizard> {
  final _pageCtrl = PageController();
  int _page = 0;

  void _next() => _pageCtrl.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
  
  Future<void> _save() async {
    final form = ref.read(addScholarshipFormProvider);
    final dao  = ref.read(scholarshipDaoProvider);

    // insert scholarship
    await dao.insertScholarship(ScholarshipsCompanion.insert(
      name: form.name,
      provider: form.provider,
      deadline: form.deadline!,
      templateId: Value(form.templateId),
    ));

    // insert requirements
      // 2. insert requirements
    final reqRows = form.requirements
        .map((txt) => RequirementsCompanion.insert(
              stageId: const Value.absent(), // global
              title: txt,
            ))
        .toList();
    await dao.insertRequirements(reqRows);
    if (mounted) Navigator.pop(context); // kembali Dashboard
  }

  @override
  void initState() {
    super.initState();
    _pageCtrl.addListener(() {
      final idx = _pageCtrl.page?.round() ?? 0;
      if (idx != _page) setState(() => _page = idx);
    });
  }

  @override
  Widget build(BuildContext context) {
    final titles = ['Pilih Template','Info Dasar', 'Persyaratan','Tahapan','Simpan'];
    return Scaffold(
      appBar: AppBar(title: Text('${titles[_page]} (${_page + 1}/5)')),
      body: PageView(
        controller: _pageCtrl,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          StepTemplateSelect(onNext: _next),
          StepInfoBasic(onNext: _save), // untuk v1, selesai di sini
          StepRequirements(onNext: _save),     // Step 3–5 nanti
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
