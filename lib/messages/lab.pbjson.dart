//
//  Generated code. Do not modify.
//  source: lab.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use labDurationUserInputDescriptor instead')
const LabDurationUserInput$json = {
  '1': 'LabDurationUserInput',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.account.AccountData', '10': 'account'},
    {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `LabDurationUserInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labDurationUserInputDescriptor = $convert.base64Decode(
    'ChRMYWJEdXJhdGlvblVzZXJJbnB1dBIuCgdhY2NvdW50GAEgASgLMhQuYWNjb3VudC5BY2NvdW'
    '50RGF0YVIHYWNjb3VudBIUCgVjb3VudBgCIAEoBVIFY291bnQ=');

@$core.Deprecated('Use labDurationUserOutputDescriptor instead')
const LabDurationUserOutput$json = {
  '1': 'LabDurationUserOutput',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'err', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'err', '17': true},
  ],
  '8': [
    {'1': '_err'},
  ],
};

/// Descriptor for `LabDurationUserOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labDurationUserOutputDescriptor = $convert.base64Decode(
    'ChVMYWJEdXJhdGlvblVzZXJPdXRwdXQSDgoCb2sYASABKAhSAm9rEhUKA2VychgCIAEoCUgAUg'
    'NlcnKIAQFCBgoEX2Vycg==');

