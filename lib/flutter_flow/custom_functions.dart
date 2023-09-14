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

int? timeleftdays(
  DateTime? startdate,
  DateTime? enddate,
) {
  // get the difference between start date and end date
// Get the number of days left between start date and end date
  if (startdate != null && enddate != null) {
    DateTime start = DateTime(startdate.year, startdate.month, startdate.day);
    DateTime end = DateTime(enddate.year, enddate.month, enddate.day);
    Duration timeLeft = end.difference(start);
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

String? numberformat(double? inputnumber) {
  // take an inputnumber that is a double and return it as a currency of £
  if (inputnumber != null) {
    final formatter = NumberFormat.currency(locale: 'en_GB', symbol: '£');
    return formatter.format(inputnumber);
  }
  return null;
}
