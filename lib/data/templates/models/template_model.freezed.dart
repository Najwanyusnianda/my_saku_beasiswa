// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TemplateModel {

 String get templateId; String get scholarshipName; String get provider; int get version; String? get description; List<String>? get level; String? get fundingType; List<String>? get tags; List<TemplateLink>? get officialLinks; List<Requirement>? get structuredRequirements; List<Stage>? get stages;
/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemplateModelCopyWith<TemplateModel> get copyWith => _$TemplateModelCopyWithImpl<TemplateModel>(this as TemplateModel, _$identity);

  /// Serializes this TemplateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemplateModel&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.scholarshipName, scholarshipName) || other.scholarshipName == scholarshipName)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.level, level)&&(identical(other.fundingType, fundingType) || other.fundingType == fundingType)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.officialLinks, officialLinks)&&const DeepCollectionEquality().equals(other.structuredRequirements, structuredRequirements)&&const DeepCollectionEquality().equals(other.stages, stages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,templateId,scholarshipName,provider,version,description,const DeepCollectionEquality().hash(level),fundingType,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(officialLinks),const DeepCollectionEquality().hash(structuredRequirements),const DeepCollectionEquality().hash(stages));

@override
String toString() {
  return 'TemplateModel(templateId: $templateId, scholarshipName: $scholarshipName, provider: $provider, version: $version, description: $description, level: $level, fundingType: $fundingType, tags: $tags, officialLinks: $officialLinks, structuredRequirements: $structuredRequirements, stages: $stages)';
}


}

/// @nodoc
abstract mixin class $TemplateModelCopyWith<$Res>  {
  factory $TemplateModelCopyWith(TemplateModel value, $Res Function(TemplateModel) _then) = _$TemplateModelCopyWithImpl;
@useResult
$Res call({
 String templateId, String scholarshipName, String provider, int version, String? description, List<String>? level, String? fundingType, List<String>? tags, List<TemplateLink>? officialLinks, List<Requirement>? structuredRequirements, List<Stage>? stages
});




}
/// @nodoc
class _$TemplateModelCopyWithImpl<$Res>
    implements $TemplateModelCopyWith<$Res> {
  _$TemplateModelCopyWithImpl(this._self, this._then);

  final TemplateModel _self;
  final $Res Function(TemplateModel) _then;

/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? templateId = null,Object? scholarshipName = null,Object? provider = null,Object? version = null,Object? description = freezed,Object? level = freezed,Object? fundingType = freezed,Object? tags = freezed,Object? officialLinks = freezed,Object? structuredRequirements = freezed,Object? stages = freezed,}) {
  return _then(_self.copyWith(
templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,scholarshipName: null == scholarshipName ? _self.scholarshipName : scholarshipName // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as List<String>?,fundingType: freezed == fundingType ? _self.fundingType : fundingType // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,officialLinks: freezed == officialLinks ? _self.officialLinks : officialLinks // ignore: cast_nullable_to_non_nullable
as List<TemplateLink>?,structuredRequirements: freezed == structuredRequirements ? _self.structuredRequirements : structuredRequirements // ignore: cast_nullable_to_non_nullable
as List<Requirement>?,stages: freezed == stages ? _self.stages : stages // ignore: cast_nullable_to_non_nullable
as List<Stage>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TemplateModel implements TemplateModel {
  const _TemplateModel({required this.templateId, required this.scholarshipName, required this.provider, required this.version, this.description, final  List<String>? level, this.fundingType, final  List<String>? tags, final  List<TemplateLink>? officialLinks, final  List<Requirement>? structuredRequirements, final  List<Stage>? stages}): _level = level,_tags = tags,_officialLinks = officialLinks,_structuredRequirements = structuredRequirements,_stages = stages;
  factory _TemplateModel.fromJson(Map<String, dynamic> json) => _$TemplateModelFromJson(json);

@override final  String templateId;
@override final  String scholarshipName;
@override final  String provider;
@override final  int version;
@override final  String? description;
 final  List<String>? _level;
@override List<String>? get level {
  final value = _level;
  if (value == null) return null;
  if (_level is EqualUnmodifiableListView) return _level;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? fundingType;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TemplateLink>? _officialLinks;
@override List<TemplateLink>? get officialLinks {
  final value = _officialLinks;
  if (value == null) return null;
  if (_officialLinks is EqualUnmodifiableListView) return _officialLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Requirement>? _structuredRequirements;
@override List<Requirement>? get structuredRequirements {
  final value = _structuredRequirements;
  if (value == null) return null;
  if (_structuredRequirements is EqualUnmodifiableListView) return _structuredRequirements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Stage>? _stages;
@override List<Stage>? get stages {
  final value = _stages;
  if (value == null) return null;
  if (_stages is EqualUnmodifiableListView) return _stages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemplateModelCopyWith<_TemplateModel> get copyWith => __$TemplateModelCopyWithImpl<_TemplateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemplateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemplateModel&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.scholarshipName, scholarshipName) || other.scholarshipName == scholarshipName)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.version, version) || other.version == version)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._level, _level)&&(identical(other.fundingType, fundingType) || other.fundingType == fundingType)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._officialLinks, _officialLinks)&&const DeepCollectionEquality().equals(other._structuredRequirements, _structuredRequirements)&&const DeepCollectionEquality().equals(other._stages, _stages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,templateId,scholarshipName,provider,version,description,const DeepCollectionEquality().hash(_level),fundingType,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_officialLinks),const DeepCollectionEquality().hash(_structuredRequirements),const DeepCollectionEquality().hash(_stages));

@override
String toString() {
  return 'TemplateModel(templateId: $templateId, scholarshipName: $scholarshipName, provider: $provider, version: $version, description: $description, level: $level, fundingType: $fundingType, tags: $tags, officialLinks: $officialLinks, structuredRequirements: $structuredRequirements, stages: $stages)';
}


}

/// @nodoc
abstract mixin class _$TemplateModelCopyWith<$Res> implements $TemplateModelCopyWith<$Res> {
  factory _$TemplateModelCopyWith(_TemplateModel value, $Res Function(_TemplateModel) _then) = __$TemplateModelCopyWithImpl;
@override @useResult
$Res call({
 String templateId, String scholarshipName, String provider, int version, String? description, List<String>? level, String? fundingType, List<String>? tags, List<TemplateLink>? officialLinks, List<Requirement>? structuredRequirements, List<Stage>? stages
});




}
/// @nodoc
class __$TemplateModelCopyWithImpl<$Res>
    implements _$TemplateModelCopyWith<$Res> {
  __$TemplateModelCopyWithImpl(this._self, this._then);

  final _TemplateModel _self;
  final $Res Function(_TemplateModel) _then;

/// Create a copy of TemplateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? templateId = null,Object? scholarshipName = null,Object? provider = null,Object? version = null,Object? description = freezed,Object? level = freezed,Object? fundingType = freezed,Object? tags = freezed,Object? officialLinks = freezed,Object? structuredRequirements = freezed,Object? stages = freezed,}) {
  return _then(_TemplateModel(
templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,scholarshipName: null == scholarshipName ? _self.scholarshipName : scholarshipName // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self._level : level // ignore: cast_nullable_to_non_nullable
as List<String>?,fundingType: freezed == fundingType ? _self.fundingType : fundingType // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,officialLinks: freezed == officialLinks ? _self._officialLinks : officialLinks // ignore: cast_nullable_to_non_nullable
as List<TemplateLink>?,structuredRequirements: freezed == structuredRequirements ? _self._structuredRequirements : structuredRequirements // ignore: cast_nullable_to_non_nullable
as List<Requirement>?,stages: freezed == stages ? _self._stages : stages // ignore: cast_nullable_to_non_nullable
as List<Stage>?,
  ));
}


}


/// @nodoc
mixin _$TemplateLink {

 String get title; String get url;
/// Create a copy of TemplateLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemplateLinkCopyWith<TemplateLink> get copyWith => _$TemplateLinkCopyWithImpl<TemplateLink>(this as TemplateLink, _$identity);

  /// Serializes this TemplateLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemplateLink&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url);

@override
String toString() {
  return 'TemplateLink(title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class $TemplateLinkCopyWith<$Res>  {
  factory $TemplateLinkCopyWith(TemplateLink value, $Res Function(TemplateLink) _then) = _$TemplateLinkCopyWithImpl;
@useResult
$Res call({
 String title, String url
});




}
/// @nodoc
class _$TemplateLinkCopyWithImpl<$Res>
    implements $TemplateLinkCopyWith<$Res> {
  _$TemplateLinkCopyWithImpl(this._self, this._then);

  final TemplateLink _self;
  final $Res Function(TemplateLink) _then;

/// Create a copy of TemplateLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? url = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TemplateLink implements TemplateLink {
  const _TemplateLink({required this.title, required this.url});
  factory _TemplateLink.fromJson(Map<String, dynamic> json) => _$TemplateLinkFromJson(json);

@override final  String title;
@override final  String url;

/// Create a copy of TemplateLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemplateLinkCopyWith<_TemplateLink> get copyWith => __$TemplateLinkCopyWithImpl<_TemplateLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemplateLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemplateLink&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,url);

@override
String toString() {
  return 'TemplateLink(title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$TemplateLinkCopyWith<$Res> implements $TemplateLinkCopyWith<$Res> {
  factory _$TemplateLinkCopyWith(_TemplateLink value, $Res Function(_TemplateLink) _then) = __$TemplateLinkCopyWithImpl;
@override @useResult
$Res call({
 String title, String url
});




}
/// @nodoc
class __$TemplateLinkCopyWithImpl<$Res>
    implements _$TemplateLinkCopyWith<$Res> {
  __$TemplateLinkCopyWithImpl(this._self, this._then);

  final _TemplateLink _self;
  final $Res Function(_TemplateLink) _then;

/// Create a copy of TemplateLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? url = null,}) {
  return _then(_TemplateLink(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Requirement {

 String get type; String get value; String get condition; String? get description;
/// Create a copy of Requirement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequirementCopyWith<Requirement> get copyWith => _$RequirementCopyWithImpl<Requirement>(this as Requirement, _$identity);

  /// Serializes this Requirement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Requirement&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value,condition,description);

@override
String toString() {
  return 'Requirement(type: $type, value: $value, condition: $condition, description: $description)';
}


}

/// @nodoc
abstract mixin class $RequirementCopyWith<$Res>  {
  factory $RequirementCopyWith(Requirement value, $Res Function(Requirement) _then) = _$RequirementCopyWithImpl;
@useResult
$Res call({
 String type, String value, String condition, String? description
});




}
/// @nodoc
class _$RequirementCopyWithImpl<$Res>
    implements $RequirementCopyWith<$Res> {
  _$RequirementCopyWithImpl(this._self, this._then);

  final Requirement _self;
  final $Res Function(Requirement) _then;

/// Create a copy of Requirement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,Object? condition = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Requirement implements Requirement {
  const _Requirement({required this.type, required this.value, required this.condition, this.description});
  factory _Requirement.fromJson(Map<String, dynamic> json) => _$RequirementFromJson(json);

@override final  String type;
@override final  String value;
@override final  String condition;
@override final  String? description;

/// Create a copy of Requirement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequirementCopyWith<_Requirement> get copyWith => __$RequirementCopyWithImpl<_Requirement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequirementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Requirement&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value,condition,description);

@override
String toString() {
  return 'Requirement(type: $type, value: $value, condition: $condition, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RequirementCopyWith<$Res> implements $RequirementCopyWith<$Res> {
  factory _$RequirementCopyWith(_Requirement value, $Res Function(_Requirement) _then) = __$RequirementCopyWithImpl;
@override @useResult
$Res call({
 String type, String value, String condition, String? description
});




}
/// @nodoc
class __$RequirementCopyWithImpl<$Res>
    implements _$RequirementCopyWith<$Res> {
  __$RequirementCopyWithImpl(this._self, this._then);

  final _Requirement _self;
  final $Res Function(_Requirement) _then;

/// Create a copy of Requirement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,Object? condition = null,Object? description = freezed,}) {
  return _then(_Requirement(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Stage {

 int get order; String get stageName; String? get stageType; String? get description;
/// Create a copy of Stage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StageCopyWith<Stage> get copyWith => _$StageCopyWithImpl<Stage>(this as Stage, _$identity);

  /// Serializes this Stage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stage&&(identical(other.order, order) || other.order == order)&&(identical(other.stageName, stageName) || other.stageName == stageName)&&(identical(other.stageType, stageType) || other.stageType == stageType)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,order,stageName,stageType,description);

@override
String toString() {
  return 'Stage(order: $order, stageName: $stageName, stageType: $stageType, description: $description)';
}


}

/// @nodoc
abstract mixin class $StageCopyWith<$Res>  {
  factory $StageCopyWith(Stage value, $Res Function(Stage) _then) = _$StageCopyWithImpl;
@useResult
$Res call({
 int order, String stageName, String? stageType, String? description
});




}
/// @nodoc
class _$StageCopyWithImpl<$Res>
    implements $StageCopyWith<$Res> {
  _$StageCopyWithImpl(this._self, this._then);

  final Stage _self;
  final $Res Function(Stage) _then;

/// Create a copy of Stage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? order = null,Object? stageName = null,Object? stageType = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,stageName: null == stageName ? _self.stageName : stageName // ignore: cast_nullable_to_non_nullable
as String,stageType: freezed == stageType ? _self.stageType : stageType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Stage implements Stage {
  const _Stage({required this.order, required this.stageName, this.stageType, this.description});
  factory _Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);

@override final  int order;
@override final  String stageName;
@override final  String? stageType;
@override final  String? description;

/// Create a copy of Stage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StageCopyWith<_Stage> get copyWith => __$StageCopyWithImpl<_Stage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stage&&(identical(other.order, order) || other.order == order)&&(identical(other.stageName, stageName) || other.stageName == stageName)&&(identical(other.stageType, stageType) || other.stageType == stageType)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,order,stageName,stageType,description);

@override
String toString() {
  return 'Stage(order: $order, stageName: $stageName, stageType: $stageType, description: $description)';
}


}

/// @nodoc
abstract mixin class _$StageCopyWith<$Res> implements $StageCopyWith<$Res> {
  factory _$StageCopyWith(_Stage value, $Res Function(_Stage) _then) = __$StageCopyWithImpl;
@override @useResult
$Res call({
 int order, String stageName, String? stageType, String? description
});




}
/// @nodoc
class __$StageCopyWithImpl<$Res>
    implements _$StageCopyWith<$Res> {
  __$StageCopyWithImpl(this._self, this._then);

  final _Stage _self;
  final $Res Function(_Stage) _then;

/// Create a copy of Stage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? order = null,Object? stageName = null,Object? stageType = freezed,Object? description = freezed,}) {
  return _then(_Stage(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,stageName: null == stageName ? _self.stageName : stageName // ignore: cast_nullable_to_non_nullable
as String,stageType: freezed == stageType ? _self.stageType : stageType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
