//
//  Generated code. Do not modify.
//  source: grades.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gradesInputDescriptor instead')
const GradesInput$json = {
  '1': 'GradesInput',
  '2': [
    {'1': 'account', '3': 3, '4': 1, '5': 11, '6': '.account.AccountData', '10': 'account'},
  ],
};

/// Descriptor for `GradesInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradesInputDescriptor = $convert.base64Decode(
    'CgtHcmFkZXNJbnB1dBIuCgdhY2NvdW50GAMgASgLMhQuYWNjb3VudC5BY2NvdW50RGF0YVIHYW'
    'Njb3VudA==');

@$core.Deprecated('Use gradeDataDescriptor instead')
const GradeData$json = {
  '1': 'GradeData',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'point', '3': 2, '4': 1, '5': 9, '10': 'point'},
    {'1': 'grade', '3': 3, '4': 1, '5': 9, '10': 'grade'},
  ],
};

/// Descriptor for `GradeData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradeDataDescriptor = $convert.base64Decode(
    'CglHcmFkZURhdGESEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVwb2ludBgCIAEoCVIFcG9pbnQSFA'
    'oFZ3JhZGUYAyABKAlSBWdyYWRl');

@$core.Deprecated('Use gradesOutputDescriptor instead')
const GradesOutput$json = {
  '1': 'GradesOutput',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.grades.GradeData', '10': 'data'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'error', '17': true},
  ],
  '8': [
    {'1': '_error'},
  ],
};

/// Descriptor for `GradesOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradesOutputDescriptor = $convert.base64Decode(
    'CgxHcmFkZXNPdXRwdXQSDgoCb2sYASABKAhSAm9rEiUKBGRhdGEYAiADKAsyES5ncmFkZXMuR3'
    'JhZGVEYXRhUgRkYXRhEhkKBWVycm9yGAMgASgJSABSBWVycm9yiAEBQggKBl9lcnJvcg==');

@$core.Deprecated('Use weChatGradesInputDescriptor instead')
const WeChatGradesInput$json = {
  '1': 'WeChatGradesInput',
  '2': [
    {'1': 'account', '3': 3, '4': 1, '5': 11, '6': '.account.AccountData', '10': 'account'},
  ],
};

/// Descriptor for `WeChatGradesInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weChatGradesInputDescriptor = $convert.base64Decode(
    'ChFXZUNoYXRHcmFkZXNJbnB1dBIuCgdhY2NvdW50GAMgASgLMhQuYWNjb3VudC5BY2NvdW50RG'
    'F0YVIHYWNjb3VudA==');

@$core.Deprecated('Use weChatGradeDataDescriptor instead')
const WeChatGradeData$json = {
  '1': 'WeChatGradeData',
  '2': [
    {'1': 'class_name', '3': 1, '4': 1, '5': 9, '10': 'className'},
    {'1': 'course_name', '3': 2, '4': 1, '5': 9, '10': 'courseName'},
    {'1': 'term', '3': 3, '4': 1, '5': 5, '10': 'term'},
    {'1': 'credits', '3': 4, '4': 1, '5': 2, '10': 'credits'},
    {'1': 'usual_grade', '3': 5, '4': 1, '5': 2, '10': 'usualGrade'},
    {'1': 'mid_grade', '3': 6, '4': 1, '5': 2, '10': 'midGrade'},
    {'1': 'end_grade', '3': 7, '4': 1, '5': 2, '10': 'endGrade'},
    {'1': 'grade', '3': 8, '4': 1, '5': 2, '10': 'grade'},
    {'1': 'exam_type', '3': 9, '4': 1, '5': 9, '10': 'examType'},
    {'1': 'teacher_name', '3': 10, '4': 1, '5': 9, '10': 'teacherName'},
    {'1': 'course_type_name', '3': 11, '4': 1, '5': 9, '10': 'courseTypeName'},
    {'1': 'grade_points', '3': 12, '4': 1, '5': 2, '10': 'gradePoints'},
  ],
};

/// Descriptor for `WeChatGradeData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weChatGradeDataDescriptor = $convert.base64Decode(
    'Cg9XZUNoYXRHcmFkZURhdGESHQoKY2xhc3NfbmFtZRgBIAEoCVIJY2xhc3NOYW1lEh8KC2NvdX'
    'JzZV9uYW1lGAIgASgJUgpjb3Vyc2VOYW1lEhIKBHRlcm0YAyABKAVSBHRlcm0SGAoHY3JlZGl0'
    'cxgEIAEoAlIHY3JlZGl0cxIfCgt1c3VhbF9ncmFkZRgFIAEoAlIKdXN1YWxHcmFkZRIbCgltaW'
    'RfZ3JhZGUYBiABKAJSCG1pZEdyYWRlEhsKCWVuZF9ncmFkZRgHIAEoAlIIZW5kR3JhZGUSFAoF'
    'Z3JhZGUYCCABKAJSBWdyYWRlEhsKCWV4YW1fdHlwZRgJIAEoCVIIZXhhbVR5cGUSIQoMdGVhY2'
    'hlcl9uYW1lGAogASgJUgt0ZWFjaGVyTmFtZRIoChBjb3Vyc2VfdHlwZV9uYW1lGAsgASgJUg5j'
    'b3Vyc2VUeXBlTmFtZRIhCgxncmFkZV9wb2ludHMYDCABKAJSC2dyYWRlUG9pbnRz');

@$core.Deprecated('Use weChatGradesOutputDescriptor instead')
const WeChatGradesOutput$json = {
  '1': 'WeChatGradesOutput',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.grades.WeChatGradeData', '10': 'data'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'error', '17': true},
  ],
  '8': [
    {'1': '_error'},
  ],
};

/// Descriptor for `WeChatGradesOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weChatGradesOutputDescriptor = $convert.base64Decode(
    'ChJXZUNoYXRHcmFkZXNPdXRwdXQSDgoCb2sYASABKAhSAm9rEisKBGRhdGEYAiADKAsyFy5ncm'
    'FkZXMuV2VDaGF0R3JhZGVEYXRhUgRkYXRhEhkKBWVycm9yGAMgASgJSABSBWVycm9yiAEBQggK'
    'Bl9lcnJvcg==');

@$core.Deprecated('Use weChatRankInputDescriptor instead')
const WeChatRankInput$json = {
  '1': 'WeChatRankInput',
  '2': [
    {'1': 'account', '3': 3, '4': 1, '5': 11, '6': '.account.AccountData', '10': 'account'},
  ],
};

/// Descriptor for `WeChatRankInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weChatRankInputDescriptor = $convert.base64Decode(
    'Cg9XZUNoYXRSYW5rSW5wdXQSLgoHYWNjb3VudBgDIAEoCzIULmFjY291bnQuQWNjb3VudERhdG'
    'FSB2FjY291bnQ=');

@$core.Deprecated('Use weChatRankDataDescriptor instead')
const WeChatRankData$json = {
  '1': 'WeChatRankData',
  '2': [
    {'1': 'rank', '3': 1, '4': 1, '5': 9, '10': 'rank'},
    {'1': 'major_rank', '3': 2, '4': 1, '5': 9, '10': 'majorRank'},
    {'1': 'gpa', '3': 3, '4': 1, '5': 9, '10': 'gpa'},
    {'1': 'total_credits', '3': 4, '4': 1, '5': 9, '10': 'totalCredits'},
  ],
};

/// Descriptor for `WeChatRankData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weChatRankDataDescriptor = $convert.base64Decode(
    'Cg5XZUNoYXRSYW5rRGF0YRISCgRyYW5rGAEgASgJUgRyYW5rEh0KCm1ham9yX3JhbmsYAiABKA'
    'lSCW1ham9yUmFuaxIQCgNncGEYAyABKAlSA2dwYRIjCg10b3RhbF9jcmVkaXRzGAQgASgJUgx0'
    'b3RhbENyZWRpdHM=');

@$core.Deprecated('Use weChatRankDataOutputDescriptor instead')
const WeChatRankDataOutput$json = {
  '1': 'WeChatRankDataOutput',
  '2': [
    {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.grades.WeChatRankData', '9': 0, '10': 'data', '17': true},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'error', '17': true},
  ],
  '8': [
    {'1': '_data'},
    {'1': '_error'},
  ],
};

/// Descriptor for `WeChatRankDataOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weChatRankDataOutputDescriptor = $convert.base64Decode(
    'ChRXZUNoYXRSYW5rRGF0YU91dHB1dBIOCgJvaxgBIAEoCFICb2sSLwoEZGF0YRgCIAEoCzIWLm'
    'dyYWRlcy5XZUNoYXRSYW5rRGF0YUgAUgRkYXRhiAEBEhkKBWVycm9yGAMgASgJSAFSBWVycm9y'
    'iAEBQgcKBV9kYXRhQggKBl9lcnJvcg==');

