// ignore_for_file: invalid_language_version_override

import 'dart:async';
import 'dart:typed_data';
import 'package:rinf/rinf.dart';

//
//  Generated code. Do not modify.
//  source: grades.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pb.dart' as $0;

/// [DART-SIGNAL]
class GradesInput extends $pb.GeneratedMessage {
  factory GradesInput({
    $0.AccountData? account,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  GradesInput._() : super();
  factory GradesInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GradesInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GradesInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOM<$0.AccountData>(3, _omitFieldNames ? '' : 'account', subBuilder: $0.AccountData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GradesInput clone() => GradesInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GradesInput copyWith(void Function(GradesInput) updates) => super.copyWith((message) => updates(message as GradesInput)) as GradesInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GradesInput create() => GradesInput._();
  GradesInput createEmptyInstance() => create();
  static $pb.PbList<GradesInput> createRepeated() => $pb.PbList<GradesInput>();
  @$core.pragma('dart2js:noInline')
  static GradesInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GradesInput>(create);
  static GradesInput? _defaultInstance;

  @$pb.TagNumber(3)
  $0.AccountData get account => $_getN(0);
  @$pb.TagNumber(3)
  set account($0.AccountData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);
  @$pb.TagNumber(3)
  $0.AccountData ensureAccount() => $_ensure(0);
}

class GradeData extends $pb.GeneratedMessage {
  factory GradeData({
    $core.String? name,
    $core.String? point,
    $core.String? grade,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (point != null) {
      $result.point = point;
    }
    if (grade != null) {
      $result.grade = grade;
    }
    return $result;
  }
  GradeData._() : super();
  factory GradeData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GradeData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GradeData', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'point')
    ..aOS(3, _omitFieldNames ? '' : 'grade')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GradeData clone() => GradeData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GradeData copyWith(void Function(GradeData) updates) => super.copyWith((message) => updates(message as GradeData)) as GradeData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GradeData create() => GradeData._();
  GradeData createEmptyInstance() => create();
  static $pb.PbList<GradeData> createRepeated() => $pb.PbList<GradeData>();
  @$core.pragma('dart2js:noInline')
  static GradeData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GradeData>(create);
  static GradeData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get point => $_getSZ(1);
  @$pb.TagNumber(2)
  set point($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoint() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get grade => $_getSZ(2);
  @$pb.TagNumber(3)
  set grade($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGrade() => $_has(2);
  @$pb.TagNumber(3)
  void clearGrade() => clearField(3);
}

/// [RUST-SIGNAL]
class GradesOutput extends $pb.GeneratedMessage {static final rustSignalStream =
    gradesOutputController.stream.asBroadcastStream();

  factory GradesOutput({
    $core.bool? ok,
    $core.Iterable<GradeData>? data,
    $core.String? error,
  }) {
    final $result = create();
    if (ok != null) {
      $result.ok = ok;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  GradesOutput._() : super();
  factory GradesOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GradesOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GradesOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..pc<GradeData>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: GradeData.create)
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GradesOutput clone() => GradesOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GradesOutput copyWith(void Function(GradesOutput) updates) => super.copyWith((message) => updates(message as GradesOutput)) as GradesOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GradesOutput create() => GradesOutput._();
  GradesOutput createEmptyInstance() => create();
  static $pb.PbList<GradesOutput> createRepeated() => $pb.PbList<GradesOutput>();
  @$core.pragma('dart2js:noInline')
  static GradesOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GradesOutput>(create);
  static GradesOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GradeData> get data => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

/// [DART-SIGNAL]
class WeChatGradesInput extends $pb.GeneratedMessage {
  factory WeChatGradesInput({
    $0.AccountData? account,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  WeChatGradesInput._() : super();
  factory WeChatGradesInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeChatGradesInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeChatGradesInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOM<$0.AccountData>(3, _omitFieldNames ? '' : 'account', subBuilder: $0.AccountData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeChatGradesInput clone() => WeChatGradesInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeChatGradesInput copyWith(void Function(WeChatGradesInput) updates) => super.copyWith((message) => updates(message as WeChatGradesInput)) as WeChatGradesInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeChatGradesInput create() => WeChatGradesInput._();
  WeChatGradesInput createEmptyInstance() => create();
  static $pb.PbList<WeChatGradesInput> createRepeated() => $pb.PbList<WeChatGradesInput>();
  @$core.pragma('dart2js:noInline')
  static WeChatGradesInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeChatGradesInput>(create);
  static WeChatGradesInput? _defaultInstance;

  @$pb.TagNumber(3)
  $0.AccountData get account => $_getN(0);
  @$pb.TagNumber(3)
  set account($0.AccountData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);
  @$pb.TagNumber(3)
  $0.AccountData ensureAccount() => $_ensure(0);
}

class WeChatGradeData extends $pb.GeneratedMessage {
  factory WeChatGradeData({
    $core.String? className,
    $core.String? courseName,
    $core.int? term,
    $core.double? credits,
    $core.double? usualGrade,
    $core.double? midGrade,
    $core.double? endGrade,
    $core.double? grade,
    $core.String? examType,
    $core.String? teacherName,
    $core.String? courseTypeName,
    $core.double? gradePoints,
  }) {
    final $result = create();
    if (className != null) {
      $result.className = className;
    }
    if (courseName != null) {
      $result.courseName = courseName;
    }
    if (term != null) {
      $result.term = term;
    }
    if (credits != null) {
      $result.credits = credits;
    }
    if (usualGrade != null) {
      $result.usualGrade = usualGrade;
    }
    if (midGrade != null) {
      $result.midGrade = midGrade;
    }
    if (endGrade != null) {
      $result.endGrade = endGrade;
    }
    if (grade != null) {
      $result.grade = grade;
    }
    if (examType != null) {
      $result.examType = examType;
    }
    if (teacherName != null) {
      $result.teacherName = teacherName;
    }
    if (courseTypeName != null) {
      $result.courseTypeName = courseTypeName;
    }
    if (gradePoints != null) {
      $result.gradePoints = gradePoints;
    }
    return $result;
  }
  WeChatGradeData._() : super();
  factory WeChatGradeData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeChatGradeData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeChatGradeData', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'className')
    ..aOS(2, _omitFieldNames ? '' : 'courseName')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'term', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'credits', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'usualGrade', $pb.PbFieldType.OF)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'midGrade', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'endGrade', $pb.PbFieldType.OF)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'grade', $pb.PbFieldType.OF)
    ..aOS(9, _omitFieldNames ? '' : 'examType')
    ..aOS(10, _omitFieldNames ? '' : 'teacherName')
    ..aOS(11, _omitFieldNames ? '' : 'courseTypeName')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'gradePoints', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeChatGradeData clone() => WeChatGradeData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeChatGradeData copyWith(void Function(WeChatGradeData) updates) => super.copyWith((message) => updates(message as WeChatGradeData)) as WeChatGradeData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeChatGradeData create() => WeChatGradeData._();
  WeChatGradeData createEmptyInstance() => create();
  static $pb.PbList<WeChatGradeData> createRepeated() => $pb.PbList<WeChatGradeData>();
  @$core.pragma('dart2js:noInline')
  static WeChatGradeData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeChatGradeData>(create);
  static WeChatGradeData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get className => $_getSZ(0);
  @$pb.TagNumber(1)
  set className($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClassName() => $_has(0);
  @$pb.TagNumber(1)
  void clearClassName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get courseName => $_getSZ(1);
  @$pb.TagNumber(2)
  set courseName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCourseName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCourseName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get term => $_getIZ(2);
  @$pb.TagNumber(3)
  set term($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerm() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerm() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get credits => $_getN(3);
  @$pb.TagNumber(4)
  set credits($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCredits() => $_has(3);
  @$pb.TagNumber(4)
  void clearCredits() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get usualGrade => $_getN(4);
  @$pb.TagNumber(5)
  set usualGrade($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUsualGrade() => $_has(4);
  @$pb.TagNumber(5)
  void clearUsualGrade() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get midGrade => $_getN(5);
  @$pb.TagNumber(6)
  set midGrade($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMidGrade() => $_has(5);
  @$pb.TagNumber(6)
  void clearMidGrade() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get endGrade => $_getN(6);
  @$pb.TagNumber(7)
  set endGrade($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndGrade() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndGrade() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get grade => $_getN(7);
  @$pb.TagNumber(8)
  set grade($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGrade() => $_has(7);
  @$pb.TagNumber(8)
  void clearGrade() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get examType => $_getSZ(8);
  @$pb.TagNumber(9)
  set examType($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExamType() => $_has(8);
  @$pb.TagNumber(9)
  void clearExamType() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get teacherName => $_getSZ(9);
  @$pb.TagNumber(10)
  set teacherName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTeacherName() => $_has(9);
  @$pb.TagNumber(10)
  void clearTeacherName() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get courseTypeName => $_getSZ(10);
  @$pb.TagNumber(11)
  set courseTypeName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCourseTypeName() => $_has(10);
  @$pb.TagNumber(11)
  void clearCourseTypeName() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get gradePoints => $_getN(11);
  @$pb.TagNumber(12)
  set gradePoints($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGradePoints() => $_has(11);
  @$pb.TagNumber(12)
  void clearGradePoints() => clearField(12);
}

/// [RUST-SIGNAL]
class WeChatGradesOutput extends $pb.GeneratedMessage {static final rustSignalStream =
    weChatGradesOutputController.stream.asBroadcastStream();

  factory WeChatGradesOutput({
    $core.bool? ok,
    $core.Iterable<WeChatGradeData>? data,
    $core.String? error,
  }) {
    final $result = create();
    if (ok != null) {
      $result.ok = ok;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  WeChatGradesOutput._() : super();
  factory WeChatGradesOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeChatGradesOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeChatGradesOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..pc<WeChatGradeData>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: WeChatGradeData.create)
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeChatGradesOutput clone() => WeChatGradesOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeChatGradesOutput copyWith(void Function(WeChatGradesOutput) updates) => super.copyWith((message) => updates(message as WeChatGradesOutput)) as WeChatGradesOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeChatGradesOutput create() => WeChatGradesOutput._();
  WeChatGradesOutput createEmptyInstance() => create();
  static $pb.PbList<WeChatGradesOutput> createRepeated() => $pb.PbList<WeChatGradesOutput>();
  @$core.pragma('dart2js:noInline')
  static WeChatGradesOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeChatGradesOutput>(create);
  static WeChatGradesOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<WeChatGradeData> get data => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

/// [DART-SIGNAL]
class WeChatRankInput extends $pb.GeneratedMessage {
  factory WeChatRankInput({
    $0.AccountData? account,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  WeChatRankInput._() : super();
  factory WeChatRankInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeChatRankInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeChatRankInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOM<$0.AccountData>(3, _omitFieldNames ? '' : 'account', subBuilder: $0.AccountData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeChatRankInput clone() => WeChatRankInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeChatRankInput copyWith(void Function(WeChatRankInput) updates) => super.copyWith((message) => updates(message as WeChatRankInput)) as WeChatRankInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeChatRankInput create() => WeChatRankInput._();
  WeChatRankInput createEmptyInstance() => create();
  static $pb.PbList<WeChatRankInput> createRepeated() => $pb.PbList<WeChatRankInput>();
  @$core.pragma('dart2js:noInline')
  static WeChatRankInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeChatRankInput>(create);
  static WeChatRankInput? _defaultInstance;

  @$pb.TagNumber(3)
  $0.AccountData get account => $_getN(0);
  @$pb.TagNumber(3)
  set account($0.AccountData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);
  @$pb.TagNumber(3)
  $0.AccountData ensureAccount() => $_ensure(0);
}

class WeChatRankData extends $pb.GeneratedMessage {
  factory WeChatRankData({
    $core.String? rank,
    $core.String? majorRank,
    $core.String? gpa,
    $core.String? totalCredits,
  }) {
    final $result = create();
    if (rank != null) {
      $result.rank = rank;
    }
    if (majorRank != null) {
      $result.majorRank = majorRank;
    }
    if (gpa != null) {
      $result.gpa = gpa;
    }
    if (totalCredits != null) {
      $result.totalCredits = totalCredits;
    }
    return $result;
  }
  WeChatRankData._() : super();
  factory WeChatRankData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeChatRankData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeChatRankData', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rank')
    ..aOS(2, _omitFieldNames ? '' : 'majorRank')
    ..aOS(3, _omitFieldNames ? '' : 'gpa')
    ..aOS(4, _omitFieldNames ? '' : 'totalCredits')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeChatRankData clone() => WeChatRankData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeChatRankData copyWith(void Function(WeChatRankData) updates) => super.copyWith((message) => updates(message as WeChatRankData)) as WeChatRankData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeChatRankData create() => WeChatRankData._();
  WeChatRankData createEmptyInstance() => create();
  static $pb.PbList<WeChatRankData> createRepeated() => $pb.PbList<WeChatRankData>();
  @$core.pragma('dart2js:noInline')
  static WeChatRankData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeChatRankData>(create);
  static WeChatRankData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rank => $_getSZ(0);
  @$pb.TagNumber(1)
  set rank($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRank() => $_has(0);
  @$pb.TagNumber(1)
  void clearRank() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get majorRank => $_getSZ(1);
  @$pb.TagNumber(2)
  set majorRank($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMajorRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearMajorRank() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get gpa => $_getSZ(2);
  @$pb.TagNumber(3)
  set gpa($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGpa() => $_has(2);
  @$pb.TagNumber(3)
  void clearGpa() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get totalCredits => $_getSZ(3);
  @$pb.TagNumber(4)
  set totalCredits($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalCredits() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalCredits() => clearField(4);
}

/// [RUST-SIGNAL]
class WeChatRankDataOutput extends $pb.GeneratedMessage {static final rustSignalStream =
    weChatRankDataOutputController.stream.asBroadcastStream();

  factory WeChatRankDataOutput({
    $core.bool? ok,
    WeChatRankData? data,
    $core.String? error,
  }) {
    final $result = create();
    if (ok != null) {
      $result.ok = ok;
    }
    if (data != null) {
      $result.data = data;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  WeChatRankDataOutput._() : super();
  factory WeChatRankDataOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeChatRankDataOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeChatRankDataOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'grades'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOM<WeChatRankData>(2, _omitFieldNames ? '' : 'data', subBuilder: WeChatRankData.create)
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeChatRankDataOutput clone() => WeChatRankDataOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeChatRankDataOutput copyWith(void Function(WeChatRankDataOutput) updates) => super.copyWith((message) => updates(message as WeChatRankDataOutput)) as WeChatRankDataOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeChatRankDataOutput create() => WeChatRankDataOutput._();
  WeChatRankDataOutput createEmptyInstance() => create();
  static $pb.PbList<WeChatRankDataOutput> createRepeated() => $pb.PbList<WeChatRankDataOutput>();
  @$core.pragma('dart2js:noInline')
  static WeChatRankDataOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeChatRankDataOutput>(create);
  static WeChatRankDataOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(2)
  WeChatRankData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(WeChatRankData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  WeChatRankData ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

extension GradesInputExt on GradesInput{
  void sendSignalToRust() {
    sendDartSignal(
      6,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final gradesOutputController = StreamController<RustSignal<GradesOutput>>();

extension WeChatGradesInputExt on WeChatGradesInput{
  void sendSignalToRust() {
    sendDartSignal(
      9,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final weChatGradesOutputController = StreamController<RustSignal<WeChatGradesOutput>>();

extension WeChatRankInputExt on WeChatRankInput{
  void sendSignalToRust() {
    sendDartSignal(
      12,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final weChatRankDataOutputController = StreamController<RustSignal<WeChatRankDataOutput>>();
