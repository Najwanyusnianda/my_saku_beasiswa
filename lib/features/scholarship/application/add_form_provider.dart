// lib/features/scholarship/application/add_form_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/templates/models/template_model.dart';
import 'add_form_model.dart';

final addScholarshipFormProvider =
    StateNotifierProvider<AddScholarshipFormNotifier, AddScholarshipForm>(
  (ref) => AddScholarshipFormNotifier(),
);

class AddScholarshipFormNotifier extends StateNotifier<AddScholarshipForm> {
  AddScholarshipFormNotifier() : super(AddScholarshipForm());

  void reset() => state = AddScholarshipForm();

  /// Prefill dari TemplateModel (setelah decode)
  void applyTemplate(TemplateModel t) {
    state = AddScholarshipForm()
      ..templateId = t.templateId
      ..name = t.scholarshipName
      ..provider = t.provider;
  }

  void setName(String v) => state = state..name = v;
  void setProvider(String v) => state = state..provider = v;
  void setDeadline(DateTime d) => state = state..deadline = d;

  void addRequirement(String text) {
    if (text.trim().isEmpty) return;
    state = state..requirements = [...state.requirements, text.trim()];
  }

  void removeRequirementAt(int idx) {
    final list = [...state.requirements]..removeAt(idx);
    state = state..requirements = list;
  }
}

extension AddFormX on AddScholarshipForm {
  bool get isStep2Valid =>
      name.trim().isNotEmpty &&
      provider.trim().isNotEmpty &&
      deadline != null;
}


