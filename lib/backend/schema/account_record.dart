import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountRecord extends FirestoreRecord {
  AccountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "day_balance" field.
  double? _dayBalance;
  double get dayBalance => _dayBalance ?? 0.0;
  bool hasDayBalance() => _dayBalance != null;

  // "savings" field.
  double? _savings;
  double get savings => _savings ?? 0.0;
  bool hasSavings() => _savings != null;

  // "runway" field.
  String? _runway;
  String get runway => _runway ?? '';
  bool hasRunway() => _runway != null;

  // "timelefthrs" field.
  double? _timelefthrs;
  double get timelefthrs => _timelefthrs ?? 0.0;
  bool hasTimelefthrs() => _timelefthrs != null;

  // "timeleftday" field.
  double? _timeleftday;
  double get timeleftday => _timeleftday ?? 0.0;
  bool hasTimeleftday() => _timeleftday != null;

  // "day_add" field.
  double? _dayAdd;
  double get dayAdd => _dayAdd ?? 0.0;
  bool hasDayAdd() => _dayAdd != null;

  // "monthly_budget" field.
  double? _monthlyBudget;
  double get monthlyBudget => _monthlyBudget ?? 0.0;
  bool hasMonthlyBudget() => _monthlyBudget != null;

  // "account_balance" field.
  double? _accountBalance;
  double get accountBalance => _accountBalance ?? 0.0;
  bool hasAccountBalance() => _accountBalance != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "tab" field.
  double? _tab;
  double get tab => _tab ?? 0.0;
  bool hasTab() => _tab != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _dayBalance = castToType<double>(snapshotData['day_balance']);
    _savings = castToType<double>(snapshotData['savings']);
    _runway = snapshotData['runway'] as String?;
    _timelefthrs = castToType<double>(snapshotData['timelefthrs']);
    _timeleftday = castToType<double>(snapshotData['timeleftday']);
    _dayAdd = castToType<double>(snapshotData['day_add']);
    _monthlyBudget = castToType<double>(snapshotData['monthly_budget']);
    _accountBalance = castToType<double>(snapshotData['account_balance']);
    _startDate = snapshotData['start_date'] as DateTime?;
    _tab = castToType<double>(snapshotData['tab']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('account')
          : FirebaseFirestore.instance.collectionGroup('account');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('account').doc();

  static Stream<AccountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountRecord.fromSnapshot(s));

  static Future<AccountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountRecord.fromSnapshot(s));

  static AccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountRecordData({
  double? dayBalance,
  double? savings,
  String? runway,
  double? timelefthrs,
  double? timeleftday,
  double? dayAdd,
  double? monthlyBudget,
  double? accountBalance,
  DateTime? startDate,
  double? tab,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'day_balance': dayBalance,
      'savings': savings,
      'runway': runway,
      'timelefthrs': timelefthrs,
      'timeleftday': timeleftday,
      'day_add': dayAdd,
      'monthly_budget': monthlyBudget,
      'account_balance': accountBalance,
      'start_date': startDate,
      'tab': tab,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountRecordDocumentEquality implements Equality<AccountRecord> {
  const AccountRecordDocumentEquality();

  @override
  bool equals(AccountRecord? e1, AccountRecord? e2) {
    return e1?.dayBalance == e2?.dayBalance &&
        e1?.savings == e2?.savings &&
        e1?.runway == e2?.runway &&
        e1?.timelefthrs == e2?.timelefthrs &&
        e1?.timeleftday == e2?.timeleftday &&
        e1?.dayAdd == e2?.dayAdd &&
        e1?.monthlyBudget == e2?.monthlyBudget &&
        e1?.accountBalance == e2?.accountBalance &&
        e1?.startDate == e2?.startDate &&
        e1?.tab == e2?.tab;
  }

  @override
  int hash(AccountRecord? e) => const ListEquality().hash([
        e?.dayBalance,
        e?.savings,
        e?.runway,
        e?.timelefthrs,
        e?.timeleftday,
        e?.dayAdd,
        e?.monthlyBudget,
        e?.accountBalance,
        e?.startDate,
        e?.tab
      ]);

  @override
  bool isValidKey(Object? o) => o is AccountRecord;
}
