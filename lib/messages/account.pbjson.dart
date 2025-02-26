//
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use accountDataDescriptor instead')
const AccountData$json = {
  '1': 'AccountData',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AccountData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDataDescriptor = $convert.base64Decode(
    'CgtBY2NvdW50RGF0YRISCgR1c2VyGAEgASgJUgR1c2VyEhoKCHBhc3N3b3JkGAIgASgJUghwYX'
    'Nzd29yZA==');

@$core.Deprecated('Use sSOAccountLoginInputDescriptor instead')
const SSOAccountLoginInput$json = {
  '1': 'SSOAccountLoginInput',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.account.AccountData', '10': 'account'},
  ],
};

/// Descriptor for `SSOAccountLoginInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sSOAccountLoginInputDescriptor = $convert.base64Decode(
    'ChRTU09BY2NvdW50TG9naW5JbnB1dBIuCgdhY2NvdW50GAEgASgLMhQuYWNjb3VudC5BY2NvdW'
    '50RGF0YVIHYWNjb3VudA==');

@$core.Deprecated('Use eDUAccountLoginInputDescriptor instead')
const EDUAccountLoginInput$json = {
  '1': 'EDUAccountLoginInput',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.account.AccountData', '10': 'account'},
  ],
};

/// Descriptor for `EDUAccountLoginInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eDUAccountLoginInputDescriptor = $convert.base64Decode(
    'ChRFRFVBY2NvdW50TG9naW5JbnB1dBIuCgdhY2NvdW50GAEgASgLMhQuYWNjb3VudC5BY2NvdW'
    '50RGF0YVIHYWNjb3VudA==');

@$core.Deprecated('Use accountLoginCallbackDescriptor instead')
const AccountLoginCallback$json = {
  '1': 'AccountLoginCallback',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'error', '17': true},
  ],
  '8': [
    {'1': '_error'},
  ],
};

/// Descriptor for `AccountLoginCallback`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountLoginCallbackDescriptor = $convert.base64Decode(
    'ChRBY2NvdW50TG9naW5DYWxsYmFjaxIOCgJvaxgBIAEoCFICb2sSGQoFZXJyb3IYAyABKAlIAF'
    'IFZXJyb3KIAQFCCAoGX2Vycm9y');

