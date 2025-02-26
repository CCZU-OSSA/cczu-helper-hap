// ignore_for_file: invalid_language_version_override

import 'dart:async';
import 'dart:typed_data';
import 'package:rinf/rinf.dart';

//
//  Generated code. Do not modify.
//  source: lab.proto
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
class LabDurationUserInput extends $pb.GeneratedMessage {
  factory LabDurationUserInput({
    $0.AccountData? account,
    $core.int? count,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  LabDurationUserInput._() : super();
  factory LabDurationUserInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabDurationUserInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabDurationUserInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'lab'), createEmptyInstance: create)
    ..aOM<$0.AccountData>(1, _omitFieldNames ? '' : 'account', subBuilder: $0.AccountData.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabDurationUserInput clone() => LabDurationUserInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabDurationUserInput copyWith(void Function(LabDurationUserInput) updates) => super.copyWith((message) => updates(message as LabDurationUserInput)) as LabDurationUserInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabDurationUserInput create() => LabDurationUserInput._();
  LabDurationUserInput createEmptyInstance() => create();
  static $pb.PbList<LabDurationUserInput> createRepeated() => $pb.PbList<LabDurationUserInput>();
  @$core.pragma('dart2js:noInline')
  static LabDurationUserInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabDurationUserInput>(create);
  static LabDurationUserInput? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountData get account => $_getN(0);
  @$pb.TagNumber(1)
  set account($0.AccountData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountData ensureAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

/// [RUST-SIGNAL]
class LabDurationUserOutput extends $pb.GeneratedMessage {static final rustSignalStream =
    labDurationUserOutputController.stream.asBroadcastStream();

  factory LabDurationUserOutput({
    $core.bool? ok,
    $core.String? err,
  }) {
    final $result = create();
    if (ok != null) {
      $result.ok = ok;
    }
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  LabDurationUserOutput._() : super();
  factory LabDurationUserOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabDurationUserOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabDurationUserOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'lab'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(2, _omitFieldNames ? '' : 'err')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabDurationUserOutput clone() => LabDurationUserOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabDurationUserOutput copyWith(void Function(LabDurationUserOutput) updates) => super.copyWith((message) => updates(message as LabDurationUserOutput)) as LabDurationUserOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabDurationUserOutput create() => LabDurationUserOutput._();
  LabDurationUserOutput createEmptyInstance() => create();
  static $pb.PbList<LabDurationUserOutput> createRepeated() => $pb.PbList<LabDurationUserOutput>();
  @$core.pragma('dart2js:noInline')
  static LabDurationUserOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabDurationUserOutput>(create);
  static LabDurationUserOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get err => $_getSZ(1);
  @$pb.TagNumber(2)
  set err($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErr() => $_has(1);
  @$pb.TagNumber(2)
  void clearErr() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

extension LabDurationUserInputExt on LabDurationUserInput{
  void sendSignalToRust() {
    sendDartSignal(
      20,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final labDurationUserOutputController = StreamController<RustSignal<LabDurationUserOutput>>();
