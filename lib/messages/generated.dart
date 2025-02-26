import './update.pb.dart' as update;
import './lab.pb.dart' as lab;
import './icalendar.pb.dart' as icalendar;
import './grades.pb.dart' as grades;
import './cmcc.pb.dart' as cmcc;
import './account.pb.dart' as account;
// ignore_for_file: unused_import

import 'dart:typed_data';
import 'package:rinf/rinf.dart';

final rustSignalHandlers = <int, void Function(Uint8List, Uint8List)>{
3: (Uint8List messageBytes, Uint8List binary) {
  final message = account.AccountLoginCallback.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  account.accountLoginCallbackController.add(rustSignal);
},
5: (Uint8List messageBytes, Uint8List binary) {
  final message = cmcc.CMCCAccountGenerateOutput.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  cmcc.cMCCAccountGenerateOutputController.add(rustSignal);
},
8: (Uint8List messageBytes, Uint8List binary) {
  final message = grades.GradesOutput.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  grades.gradesOutputController.add(rustSignal);
},
11: (Uint8List messageBytes, Uint8List binary) {
  final message = grades.WeChatGradesOutput.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  grades.weChatGradesOutputController.add(rustSignal);
},
14: (Uint8List messageBytes, Uint8List binary) {
  final message = grades.WeChatRankDataOutput.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  grades.weChatRankDataOutputController.add(rustSignal);
},
16: (Uint8List messageBytes, Uint8List binary) {
  final message = icalendar.ICalendarOutput.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  icalendar.iCalendarOutputController.add(rustSignal);
},
19: (Uint8List messageBytes, Uint8List binary) {
  final message = icalendar.WeChatTermsOutput.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  icalendar.weChatTermsOutputController.add(rustSignal);
},
21: (Uint8List messageBytes, Uint8List binary) {
  final message = lab.LabDurationUserOutput.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  lab.labDurationUserOutputController.add(rustSignal);
},
23: (Uint8List messageBytes, Uint8List binary) {
  final message = update.GetVersionOutput.fromBuffer(messageBytes);
  final rustSignal = RustSignal(
    message,
    binary,
  );
  update.getVersionOutputController.add(rustSignal);
},
};

void assignRustSignal(int messageId, Uint8List messageBytes, Uint8List binary) {
  rustSignalHandlers[messageId]!(messageBytes, binary);
}
