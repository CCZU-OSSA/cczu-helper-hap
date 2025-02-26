// ignore_for_file: invalid_language_version_override

import 'dart:async';
import 'dart:typed_data';
import 'package:rinf/rinf.dart';

//
//  Generated code. Do not modify.
//  source: icalendar.proto
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
class ICalendarInput extends $pb.GeneratedMessage {
  factory ICalendarInput({
    $core.String? firstweekdate,
    $core.int? reminder,
    $0.AccountData? account,
  }) {
    final $result = create();
    if (firstweekdate != null) {
      $result.firstweekdate = firstweekdate;
    }
    if (reminder != null) {
      $result.reminder = reminder;
    }
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  ICalendarInput._() : super();
  factory ICalendarInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ICalendarInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ICalendarInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'icalendar'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firstweekdate')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'reminder', $pb.PbFieldType.O3)
    ..aOM<$0.AccountData>(3, _omitFieldNames ? '' : 'account', subBuilder: $0.AccountData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ICalendarInput clone() => ICalendarInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ICalendarInput copyWith(void Function(ICalendarInput) updates) => super.copyWith((message) => updates(message as ICalendarInput)) as ICalendarInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ICalendarInput create() => ICalendarInput._();
  ICalendarInput createEmptyInstance() => create();
  static $pb.PbList<ICalendarInput> createRepeated() => $pb.PbList<ICalendarInput>();
  @$core.pragma('dart2js:noInline')
  static ICalendarInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ICalendarInput>(create);
  static ICalendarInput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstweekdate => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstweekdate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstweekdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstweekdate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get reminder => $_getIZ(1);
  @$pb.TagNumber(2)
  set reminder($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReminder() => $_has(1);
  @$pb.TagNumber(2)
  void clearReminder() => clearField(2);

  @$pb.TagNumber(3)
  $0.AccountData get account => $_getN(2);
  @$pb.TagNumber(3)
  set account($0.AccountData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);
  @$pb.TagNumber(3)
  $0.AccountData ensureAccount() => $_ensure(2);
}

/// [RUST-SIGNAL]
class ICalendarOutput extends $pb.GeneratedMessage {static final rustSignalStream =
    iCalendarOutputController.stream.asBroadcastStream();

  factory ICalendarOutput({
    $core.bool? ok,
    $core.String? data,
  }) {
    final $result = create();
    if (ok != null) {
      $result.ok = ok;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  ICalendarOutput._() : super();
  factory ICalendarOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ICalendarOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ICalendarOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'icalendar'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ICalendarOutput clone() => ICalendarOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ICalendarOutput copyWith(void Function(ICalendarOutput) updates) => super.copyWith((message) => updates(message as ICalendarOutput)) as ICalendarOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ICalendarOutput create() => ICalendarOutput._();
  ICalendarOutput createEmptyInstance() => create();
  static $pb.PbList<ICalendarOutput> createRepeated() => $pb.PbList<ICalendarOutput>();
  @$core.pragma('dart2js:noInline')
  static ICalendarOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ICalendarOutput>(create);
  static ICalendarOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

/// [DART-SIGNAL]
class ICalendarWxInput extends $pb.GeneratedMessage {
  factory ICalendarWxInput({
    $core.String? firstweekdate,
    $core.int? reminder,
    $0.AccountData? account,
    $core.String? term,
  }) {
    final $result = create();
    if (firstweekdate != null) {
      $result.firstweekdate = firstweekdate;
    }
    if (reminder != null) {
      $result.reminder = reminder;
    }
    if (account != null) {
      $result.account = account;
    }
    if (term != null) {
      $result.term = term;
    }
    return $result;
  }
  ICalendarWxInput._() : super();
  factory ICalendarWxInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ICalendarWxInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ICalendarWxInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'icalendar'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firstweekdate')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'reminder', $pb.PbFieldType.O3)
    ..aOM<$0.AccountData>(3, _omitFieldNames ? '' : 'account', subBuilder: $0.AccountData.create)
    ..aOS(4, _omitFieldNames ? '' : 'term')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ICalendarWxInput clone() => ICalendarWxInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ICalendarWxInput copyWith(void Function(ICalendarWxInput) updates) => super.copyWith((message) => updates(message as ICalendarWxInput)) as ICalendarWxInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ICalendarWxInput create() => ICalendarWxInput._();
  ICalendarWxInput createEmptyInstance() => create();
  static $pb.PbList<ICalendarWxInput> createRepeated() => $pb.PbList<ICalendarWxInput>();
  @$core.pragma('dart2js:noInline')
  static ICalendarWxInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ICalendarWxInput>(create);
  static ICalendarWxInput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstweekdate => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstweekdate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstweekdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstweekdate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get reminder => $_getIZ(1);
  @$pb.TagNumber(2)
  set reminder($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReminder() => $_has(1);
  @$pb.TagNumber(2)
  void clearReminder() => clearField(2);

  @$pb.TagNumber(3)
  $0.AccountData get account => $_getN(2);
  @$pb.TagNumber(3)
  set account($0.AccountData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);
  @$pb.TagNumber(3)
  $0.AccountData ensureAccount() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get term => $_getSZ(3);
  @$pb.TagNumber(4)
  set term($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTerm() => $_has(3);
  @$pb.TagNumber(4)
  void clearTerm() => clearField(4);
}

/// [DART-SIGNAL]
class WeChatTermsInput extends $pb.GeneratedMessage {
  factory WeChatTermsInput() => create();
  WeChatTermsInput._() : super();
  factory WeChatTermsInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeChatTermsInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeChatTermsInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'icalendar'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeChatTermsInput clone() => WeChatTermsInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeChatTermsInput copyWith(void Function(WeChatTermsInput) updates) => super.copyWith((message) => updates(message as WeChatTermsInput)) as WeChatTermsInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeChatTermsInput create() => WeChatTermsInput._();
  WeChatTermsInput createEmptyInstance() => create();
  static $pb.PbList<WeChatTermsInput> createRepeated() => $pb.PbList<WeChatTermsInput>();
  @$core.pragma('dart2js:noInline')
  static WeChatTermsInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeChatTermsInput>(create);
  static WeChatTermsInput? _defaultInstance;
}

/// [RUST-SIGNAL]
class WeChatTermsOutput extends $pb.GeneratedMessage {static final rustSignalStream =
    weChatTermsOutputController.stream.asBroadcastStream();

  factory WeChatTermsOutput({
    $core.bool? ok,
    $core.Iterable<$core.String>? terms,
  }) {
    final $result = create();
    if (ok != null) {
      $result.ok = ok;
    }
    if (terms != null) {
      $result.terms.addAll(terms);
    }
    return $result;
  }
  WeChatTermsOutput._() : super();
  factory WeChatTermsOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeChatTermsOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WeChatTermsOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'icalendar'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..pPS(2, _omitFieldNames ? '' : 'terms')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeChatTermsOutput clone() => WeChatTermsOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeChatTermsOutput copyWith(void Function(WeChatTermsOutput) updates) => super.copyWith((message) => updates(message as WeChatTermsOutput)) as WeChatTermsOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WeChatTermsOutput create() => WeChatTermsOutput._();
  WeChatTermsOutput createEmptyInstance() => create();
  static $pb.PbList<WeChatTermsOutput> createRepeated() => $pb.PbList<WeChatTermsOutput>();
  @$core.pragma('dart2js:noInline')
  static WeChatTermsOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeChatTermsOutput>(create);
  static WeChatTermsOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get terms => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

extension ICalendarInputExt on ICalendarInput{
  void sendSignalToRust() {
    sendDartSignal(
      15,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final iCalendarOutputController = StreamController<RustSignal<ICalendarOutput>>();

extension ICalendarWxInputExt on ICalendarWxInput{
  void sendSignalToRust() {
    sendDartSignal(
      17,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

extension WeChatTermsInputExt on WeChatTermsInput{
  void sendSignalToRust() {
    sendDartSignal(
      18,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final weChatTermsOutputController = StreamController<RustSignal<WeChatTermsOutput>>();
