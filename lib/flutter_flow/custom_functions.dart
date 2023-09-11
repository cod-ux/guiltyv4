import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? timelefthrs() {
  // Get the number of hours left for the day to end
  DateTime now = DateTime.now();
  DateTime endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
  Duration timeLeft = endOfDay.difference(now);
  return timeLeft.inHours;
}

int? timeleftdays(DateTime? startdate) {
  // Get the integer difference between today and 30 days after an input date
  DateTime? endDate = startdate?.add(Duration(days: 30));
  if (endDate != null) {
    Duration timeLeft = endDate.difference(DateTime.now());
    return timeLeft.inDays;
  }
  return null;
}

double budgetchange(
  double? initialbudget,
  double? newbudget,
) {
  // difference between initial budget and new budget
  if (initialbudget != null && newbudget != null) {
    return newbudget - initialbudget;
  } else {
    return 0.0;
  }
}

double budgetleft(
  double budget,
  double tab,
) {
  // returns the difference between budget and tab
  return budget - tab;
}
