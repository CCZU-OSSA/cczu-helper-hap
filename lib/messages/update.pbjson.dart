//
//  Generated code. Do not modify.
//  source: update.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getVersionInputDescriptor instead')
const GetVersionInput$json = {
  '1': 'GetVersionInput',
};

/// Descriptor for `GetVersionInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVersionInputDescriptor = $convert.base64Decode(
    'Cg9HZXRWZXJzaW9uSW5wdXQ=');

@$core.Deprecated('Use getVersionOutputDescriptor instead')
const GetVersionOutput$json = {
  '1': 'GetVersionOutput',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.update.VersionInfo', '9': 0, '10': 'data', '17': true},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'error', '17': true},
  ],
  '8': [
    {'1': '_data'},
    {'1': '_error'},
  ],
};

/// Descriptor for `GetVersionOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVersionOutputDescriptor = $convert.base64Decode(
    'ChBHZXRWZXJzaW9uT3V0cHV0Eg4KAm9rGAEgASgIUgJvaxIsCgRkYXRhGAIgASgLMhMudXBkYX'
    'RlLlZlcnNpb25JbmZvSABSBGRhdGGIAQESGQoFZXJyb3IYAyABKAlIAVIFZXJyb3KIAQFCBwoF'
    'X2RhdGFCCAoGX2Vycm9y');

@$core.Deprecated('Use versionInfoDescriptor instead')
const VersionInfo$json = {
  '1': 'VersionInfo',
  '2': [
    {'1': 'tag_name', '3': 1, '4': 1, '5': 9, '10': 'tagName'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    {'1': 'assets', '3': 4, '4': 3, '5': 11, '6': '.update.AssetInfo', '10': 'assets'},
  ],
};

/// Descriptor for `VersionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionInfoDescriptor = $convert.base64Decode(
    'CgtWZXJzaW9uSW5mbxIZCgh0YWdfbmFtZRgBIAEoCVIHdGFnTmFtZRISCgRuYW1lGAIgASgJUg'
    'RuYW1lEhIKBGJvZHkYAyABKAlSBGJvZHkSKQoGYXNzZXRzGAQgAygLMhEudXBkYXRlLkFzc2V0'
    'SW5mb1IGYXNzZXRz');

@$core.Deprecated('Use assetInfoDescriptor instead')
const AssetInfo$json = {
  '1': 'AssetInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'browser_download_url', '3': 2, '4': 1, '5': 9, '10': 'browserDownloadUrl'},
    {'1': 'size', '3': 3, '4': 1, '5': 5, '10': 'size'},
  ],
};

/// Descriptor for `AssetInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetInfoDescriptor = $convert.base64Decode(
    'CglBc3NldEluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIwChRicm93c2VyX2Rvd25sb2FkX3VybB'
    'gCIAEoCVISYnJvd3NlckRvd25sb2FkVXJsEhIKBHNpemUYAyABKAVSBHNpemU=');

