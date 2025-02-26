// ignore_for_file: invalid_language_version_override

import 'dart:async';
import 'dart:typed_data';
import 'package:rinf/rinf.dart';

//
//  Generated code. Do not modify.
//  source: cmcc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// [DART-SIGNAL]
class CMCCAccountGenerateInput extends $pb.GeneratedMessage {
  factory CMCCAccountGenerateInput({
    $core.String? phone,
  }) {
    final $result = create();
    if (phone != null) {
      $result.phone = phone;
    }
    return $result;
  }
  CMCCAccountGenerateInput._() : super();
  factory CMCCAccountGenerateInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CMCCAccountGenerateInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CMCCAccountGenerateInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'cmcc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'phone')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CMCCAccountGenerateInput clone() => CMCCAccountGenerateInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CMCCAccountGenerateInput copyWith(void Function(CMCCAccountGenerateInput) updates) => super.copyWith((message) => updates(message as CMCCAccountGenerateInput)) as CMCCAccountGenerateInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CMCCAccountGenerateInput create() => CMCCAccountGenerateInput._();
  CMCCAccountGenerateInput createEmptyInstance() => create();
  static $pb.PbList<CMCCAccountGenerateInput> createRepeated() => $pb.PbList<CMCCAccountGenerateInput>();
  @$core.pragma('dart2js:noInline')
  static CMCCAccountGenerateInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CMCCAccountGenerateInput>(create);
  static CMCCAccountGenerateInput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(1)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhone() => clearField(1);
}

/// [RUST-SIGNAL]
class CMCCAccountGenerateOutput extends $pb.GeneratedMessage {static final rustSignalStream =
    cMCCAccountGenerateOutputController.stream.asBroadcastStream();

  factory CMCCAccountGenerateOutput({
    $core.String? account,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  CMCCAccountGenerateOutput._() : super();
  factory CMCCAccountGenerateOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CMCCAccountGenerateOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CMCCAccountGenerateOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'cmcc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'account')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CMCCAccountGenerateOutput clone() => CMCCAccountGenerateOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CMCCAccountGenerateOutput copyWith(void Function(CMCCAccountGenerateOutput) updates) => super.copyWith((message) => updates(message as CMCCAccountGenerateOutput)) as CMCCAccountGenerateOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CMCCAccountGenerateOutput create() => CMCCAccountGenerateOutput._();
  CMCCAccountGenerateOutput createEmptyInstance() => create();
  static $pb.PbList<CMCCAccountGenerateOutput> createRepeated() => $pb.PbList<CMCCAccountGenerateOutput>();
  @$core.pragma('dart2js:noInline')
  static CMCCAccountGenerateOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CMCCAccountGenerateOutput>(create);
  static CMCCAccountGenerateOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

extension CMCCAccountGenerateInputExt on CMCCAccountGenerateInput{
  void sendSignalToRust() {
    sendDartSignal(
      4,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final cMCCAccountGenerateOutputController = StreamController<RustSignal<CMCCAccountGenerateOutput>>();
