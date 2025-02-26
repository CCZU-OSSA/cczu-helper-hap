// ignore_for_file: invalid_language_version_override

import 'dart:async';
import 'dart:typed_data';
import 'package:rinf/rinf.dart';

//
//  Generated code. Do not modify.
//  source: update.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// [DART-SIGNAL]
class GetVersionInput extends $pb.GeneratedMessage {
  factory GetVersionInput() => create();
  GetVersionInput._() : super();
  factory GetVersionInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetVersionInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetVersionInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'update'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetVersionInput clone() => GetVersionInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetVersionInput copyWith(void Function(GetVersionInput) updates) => super.copyWith((message) => updates(message as GetVersionInput)) as GetVersionInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetVersionInput create() => GetVersionInput._();
  GetVersionInput createEmptyInstance() => create();
  static $pb.PbList<GetVersionInput> createRepeated() => $pb.PbList<GetVersionInput>();
  @$core.pragma('dart2js:noInline')
  static GetVersionInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetVersionInput>(create);
  static GetVersionInput? _defaultInstance;
}

/// [RUST-SIGNAL]
class GetVersionOutput extends $pb.GeneratedMessage {static final rustSignalStream =
    getVersionOutputController.stream.asBroadcastStream();

  factory GetVersionOutput({
    $core.bool? ok,
    VersionInfo? data,
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
  GetVersionOutput._() : super();
  factory GetVersionOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetVersionOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetVersionOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'update'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOM<VersionInfo>(2, _omitFieldNames ? '' : 'data', subBuilder: VersionInfo.create)
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetVersionOutput clone() => GetVersionOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetVersionOutput copyWith(void Function(GetVersionOutput) updates) => super.copyWith((message) => updates(message as GetVersionOutput)) as GetVersionOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetVersionOutput create() => GetVersionOutput._();
  GetVersionOutput createEmptyInstance() => create();
  static $pb.PbList<GetVersionOutput> createRepeated() => $pb.PbList<GetVersionOutput>();
  @$core.pragma('dart2js:noInline')
  static GetVersionOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetVersionOutput>(create);
  static GetVersionOutput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(2)
  VersionInfo get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(VersionInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  VersionInfo ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

class VersionInfo extends $pb.GeneratedMessage {
  factory VersionInfo({
    $core.String? tagName,
    $core.String? name,
    $core.String? body,
    $core.Iterable<AssetInfo>? assets,
  }) {
    final $result = create();
    if (tagName != null) {
      $result.tagName = tagName;
    }
    if (name != null) {
      $result.name = name;
    }
    if (body != null) {
      $result.body = body;
    }
    if (assets != null) {
      $result.assets.addAll(assets);
    }
    return $result;
  }
  VersionInfo._() : super();
  factory VersionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VersionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VersionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'update'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tagName')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'body')
    ..pc<AssetInfo>(4, _omitFieldNames ? '' : 'assets', $pb.PbFieldType.PM, subBuilder: AssetInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VersionInfo clone() => VersionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VersionInfo copyWith(void Function(VersionInfo) updates) => super.copyWith((message) => updates(message as VersionInfo)) as VersionInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VersionInfo create() => VersionInfo._();
  VersionInfo createEmptyInstance() => create();
  static $pb.PbList<VersionInfo> createRepeated() => $pb.PbList<VersionInfo>();
  @$core.pragma('dart2js:noInline')
  static VersionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VersionInfo>(create);
  static VersionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tagName => $_getSZ(0);
  @$pb.TagNumber(1)
  set tagName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTagName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTagName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<AssetInfo> get assets => $_getList(3);
}

class AssetInfo extends $pb.GeneratedMessage {
  factory AssetInfo({
    $core.String? name,
    $core.String? browserDownloadUrl,
    $core.int? size,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (browserDownloadUrl != null) {
      $result.browserDownloadUrl = browserDownloadUrl;
    }
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  AssetInfo._() : super();
  factory AssetInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssetInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'update'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'browserDownloadUrl')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetInfo clone() => AssetInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetInfo copyWith(void Function(AssetInfo) updates) => super.copyWith((message) => updates(message as AssetInfo)) as AssetInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssetInfo create() => AssetInfo._();
  AssetInfo createEmptyInstance() => create();
  static $pb.PbList<AssetInfo> createRepeated() => $pb.PbList<AssetInfo>();
  @$core.pragma('dart2js:noInline')
  static AssetInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetInfo>(create);
  static AssetInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get browserDownloadUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set browserDownloadUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBrowserDownloadUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrowserDownloadUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

extension GetVersionInputExt on GetVersionInput{
  void sendSignalToRust() {
    sendDartSignal(
      22,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final getVersionOutputController = StreamController<RustSignal<GetVersionOutput>>();
