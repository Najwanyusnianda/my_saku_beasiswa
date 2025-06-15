// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TemplateModel _$TemplateModelFromJson(Map<String, dynamic> json) =>
    _TemplateModel(
      templateId: json['templateId'] as String,
      scholarshipName: json['scholarshipName'] as String,
      provider: json['provider'] as String,
      version: (json['version'] as num).toInt(),
      description: json['description'] as String?,
      level: (json['level'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fundingType: json['fundingType'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      officialLinks: (json['officialLinks'] as List<dynamic>?)
          ?.map((e) => TemplateLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      structuredRequirements: (json['structuredRequirements'] as List<dynamic>?)
          ?.map((e) => Requirement.fromJson(e as Map<String, dynamic>))
          .toList(),
      stages: (json['stages'] as List<dynamic>?)
          ?.map((e) => Stage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TemplateModelToJson(_TemplateModel instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'scholarshipName': instance.scholarshipName,
      'provider': instance.provider,
      'version': instance.version,
      'description': instance.description,
      'level': instance.level,
      'fundingType': instance.fundingType,
      'tags': instance.tags,
      'officialLinks': instance.officialLinks,
      'structuredRequirements': instance.structuredRequirements,
      'stages': instance.stages,
    };

_TemplateLink _$TemplateLinkFromJson(Map<String, dynamic> json) =>
    _TemplateLink(title: json['title'] as String, url: json['url'] as String);

Map<String, dynamic> _$TemplateLinkToJson(_TemplateLink instance) =>
    <String, dynamic>{'title': instance.title, 'url': instance.url};

_Requirement _$RequirementFromJson(Map<String, dynamic> json) => _Requirement(
  type: json['type'] as String,
  value: json['value'] as String,
  condition: json['condition'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$RequirementToJson(_Requirement instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'condition': instance.condition,
      'description': instance.description,
    };

_Stage _$StageFromJson(Map<String, dynamic> json) => _Stage(
  order: (json['order'] as num).toInt(),
  stageName: json['stageName'] as String,
  stageType: json['stageType'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$StageToJson(_Stage instance) => <String, dynamic>{
  'order': instance.order,
  'stageName': instance.stageName,
  'stageType': instance.stageType,
  'description': instance.description,
};
