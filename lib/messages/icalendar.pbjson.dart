//
//  Generated code. Do not modify.
//  source: icalendar.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use iCalendarInputDescriptor instead')
const ICalendarInput$json = {
  '1': 'ICalendarInput',
  '2': [
    {'1': 'firstweekdate', '3': 1, '4': 1, '5': 9, '10': 'firstweekdate'},
    {'1': 'reminder', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'reminder', '17': true},
    {'1': 'account', '3': 3, '4': 1, '5': 11, '6': '.account.AccountData', '10': 'account'},
  ],
  '8': [
    {'1': '_reminder'},
  ],
};

/// Descriptor for `ICalendarInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iCalendarInputDescriptor = $convert.base64Decode(
    'Cg5JQ2FsZW5kYXJJbnB1dBIkCg1maXJzdHdlZWtkYXRlGAEgASgJUg1maXJzdHdlZWtkYXRlEh'
    '8KCHJlbWluZGVyGAIgASgFSABSCHJlbWluZGVyiAEBEi4KB2FjY291bnQYAyABKAsyFC5hY2Nv'
    'dW50LkFjY291bnREYXRhUgdhY2NvdW50QgsKCV9yZW1pbmRlcg==');

@$core.Deprecated('Use iCalendarOutputDescriptor instead')
const ICalendarOutput$json = {
  '1': 'ICalendarOutput',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `ICalendarOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iCalendarOutputDescriptor = $convert.base64Decode(
    'Cg9JQ2FsZW5kYXJPdXRwdXQSDgoCb2sYASABKAhSAm9rEhIKBGRhdGEYAiABKAlSBGRhdGE=');

@$core.Deprecated('Use iCalendarWxInputDescriptor instead')
const ICalendarWxInput$json = {
  '1': 'ICalendarWxInput',
  '2': [
    {'1': 'firstweekdate', '3': 1, '4': 1, '5': 9, '10': 'firstweekdate'},
    {'1': 'reminder', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'reminder', '17': true},
    {'1': 'account', '3': 3, '4': 1, '5': 11, '6': '.account.AccountData', '10': 'account'},
    {'1': 'term', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'term', '17': true},
  ],
  '8': [
    {'1': '_reminder'},
    {'1': '_term'},
  ],
};

/// Descriptor for `ICalendarWxInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iCalendarWxInputDescriptor = $convert.base64Decode(
    'ChBJQ2FsZW5kYXJXeElucHV0EiQKDWZpcnN0d2Vla2RhdGUYASABKAlSDWZpcnN0d2Vla2RhdG'
    'USHwoIcmVtaW5kZXIYAiABKAVIAFIIcmVtaW5kZXKIAQESLgoHYWNjb3VudBgDIAEoCzIULmFj'
    'Y291bnQuQWNjb3VudERhdGFSB2FjY291bnQSFwoEdGVybRgEIAEoCUgBUgR0ZXJtiAEBQgsKCV'
    '9yZW1pbmRlckIHCgVfdGVybQ==');

@$core.Deprecated('Use weChatTermsInputDescriptor instead')
const WeChatTermsInput$json = {
  '1': 'WeChatTermsInput',
};

/// Descriptor for `WeChatTermsInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weChatTermsInputDescriptor = $convert.base64Decode(
    'ChBXZUNoYXRUZXJtc0lucHV0');

@$core.Deprecated('Use weChatTermsOutputDescriptor instead')
const WeChatTermsOutput$json = {
  '1': 'WeChatTermsOutput',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'terms', '3': 2, '4': 3, '5': 9, '10': 'terms'},
  ],
};

/// Descriptor for `WeChatTermsOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weChatTermsOutputDescriptor = $convert.base64Decode(
    'ChFXZUNoYXRUZXJtc091dHB1dBIOCgJvaxgBIAEoCFICb2sSFAoFdGVybXMYAiADKAlSBXRlcm'
    '1z');

