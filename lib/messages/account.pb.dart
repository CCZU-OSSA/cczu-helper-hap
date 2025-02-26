// ignore_for_file: invalid_language_version_override

import 'dart:async';
import 'dart:typed_data';
import 'package:rinf/rinf.dart';

//
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AccountData extends $pb.GeneratedMessage {
  factory AccountData({
    $core.String? user,
    $core.String? password,
  }) {
    final $result = create();
    if (user != null) {
      $result.user = user;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  AccountData._() : super();
  factory AccountData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountData', package: const $pb.PackageName(_omitMessageNames ? '' : 'account'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'user')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountData clone() => AccountData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountData copyWith(void Function(AccountData) updates) => super.copyWith((message) => updates(message as AccountData)) as AccountData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountData create() => AccountData._();
  AccountData createEmptyInstance() => create();
  static $pb.PbList<AccountData> createRepeated() => $pb.PbList<AccountData>();
  @$core.pragma('dart2js:noInline')
  static AccountData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountData>(create);
  static AccountData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get user => $_getSZ(0);
  @$pb.TagNumber(1)
  set user($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

/// [DART-SIGNAL]
class SSOAccountLoginInput extends $pb.GeneratedMessage {
  factory SSOAccountLoginInput({
    AccountData? account,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  SSOAccountLoginInput._() : super();
  factory SSOAccountLoginInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SSOAccountLoginInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SSOAccountLoginInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'account'), createEmptyInstance: create)
    ..aOM<AccountData>(1, _omitFieldNames ? '' : 'account', subBuilder: AccountData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SSOAccountLoginInput clone() => SSOAccountLoginInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SSOAccountLoginInput copyWith(void Function(SSOAccountLoginInput) updates) => super.copyWith((message) => updates(message as SSOAccountLoginInput)) as SSOAccountLoginInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SSOAccountLoginInput create() => SSOAccountLoginInput._();
  SSOAccountLoginInput createEmptyInstance() => create();
  static $pb.PbList<SSOAccountLoginInput> createRepeated() => $pb.PbList<SSOAccountLoginInput>();
  @$core.pragma('dart2js:noInline')
  static SSOAccountLoginInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SSOAccountLoginInput>(create);
  static SSOAccountLoginInput? _defaultInstance;

  @$pb.TagNumber(1)
  AccountData get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(AccountData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  AccountData ensureAccount() => $_ensure(0);
}

/// [DART-SIGNAL]
class EDUAccountLoginInput extends $pb.GeneratedMessage {
  factory EDUAccountLoginInput({
    AccountData? account,
  }) {
    final $result = create();
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  EDUAccountLoginInput._() : super();
  factory EDUAccountLoginInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EDUAccountLoginInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EDUAccountLoginInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'account'), createEmptyInstance: create)
    ..aOM<AccountData>(1, _omitFieldNames ? '' : 'account', subBuilder: AccountData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EDUAccountLoginInput clone() => EDUAccountLoginInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EDUAccountLoginInput copyWith(void Function(EDUAccountLoginInput) updates) => super.copyWith((message) => updates(message as EDUAccountLoginInput)) as EDUAccountLoginInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EDUAccountLoginInput create() => EDUAccountLoginInput._();
  EDUAccountLoginInput createEmptyInstance() => create();
  static $pb.PbList<EDUAccountLoginInput> createRepeated() => $pb.PbList<EDUAccountLoginInput>();
  @$core.pragma('dart2js:noInline')
  static EDUAccountLoginInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EDUAccountLoginInput>(create);
  static EDUAccountLoginInput? _defaultInstance;

  @$pb.TagNumber(1)
  AccountData get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(AccountData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  AccountData ensureAccount() => $_ensure(0);
}

/// [RUST-SIGNAL]
class AccountLoginCallback extends $pb.GeneratedMessage {static final rustSignalStream =
    accountLoginCallbackController.stream.asBroadcastStream();

  factory AccountLoginCallback({
    $core.bool? ok,
    $core.String? error,
  }) {
    final $result = create();
    if (ok != null) {
      $result.ok = ok;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  AccountLoginCallback._() : super();
  factory AccountLoginCallback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountLoginCallback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountLoginCallback', package: const $pb.PackageName(_omitMessageNames ? '' : 'account'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ok')
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountLoginCallback clone() => AccountLoginCallback()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountLoginCallback copyWith(void Function(AccountLoginCallback) updates) => super.copyWith((message) => updates(message as AccountLoginCallback)) as AccountLoginCallback;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountLoginCallback create() => AccountLoginCallback._();
  AccountLoginCallback createEmptyInstance() => create();
  static $pb.PbList<AccountLoginCallback> createRepeated() => $pb.PbList<AccountLoginCallback>();
  @$core.pragma('dart2js:noInline')
  static AccountLoginCallback getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountLoginCallback>(create);
  static AccountLoginCallback? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

extension SSOAccountLoginInputExt on SSOAccountLoginInput{
  void sendSignalToRust() {
    sendDartSignal(
      1,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

extension EDUAccountLoginInputExt on EDUAccountLoginInput{
  void sendSignalToRust() {
    sendDartSignal(
      2,
      this.writeToBuffer(),
      Uint8List(0),
    );
  }
}

final accountLoginCallbackController = StreamController<RustSignal<AccountLoginCallback>>();
