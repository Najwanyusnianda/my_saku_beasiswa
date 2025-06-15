import 'package:freezed_annotation/freezed_annotation.dart';
part 'template_model.freezed.dart';
part 'template_model.g.dart';

@freezed
abstract class TemplateModel with _$TemplateModel {
  const factory TemplateModel({
    required String templateId,
    required String scholarshipName,
    required String provider,
    required int version,
    String? description,
    List<String>? level,
    String? fundingType,
    List<String>? tags,
    List<TemplateLink>? officialLinks,
    List<Requirement>? structuredRequirements,
    List<Stage>? stages,
  }) = _TemplateModel;

  factory TemplateModel.fromJson(Map<String, dynamic> json) =>
      _$TemplateModelFromJson(json);
}

@freezed
abstract class TemplateLink with _$TemplateLink {
  const factory TemplateLink({
    required String title,
    required String url,
  }) = _TemplateLink;
  factory TemplateLink.fromJson(Map<String, dynamic> json) =>
      _$TemplateLinkFromJson(json);
}

@freezed
abstract class Requirement with _$Requirement {
  const factory Requirement({
    required String type,
    required String value,
    required String condition,
    String? description,
  }) = _Requirement;
  factory Requirement.fromJson(Map<String, dynamic> json) =>
      _$RequirementFromJson(json);
}

@freezed
abstract class Stage with _$Stage {
  const factory Stage({
    required int order,
    required String stageName,
    String? stageType,
    String? description,
  }) = _Stage;
  factory Stage.fromJson(Map<String, dynamic> json) =>
      _$StageFromJson(json);
}
