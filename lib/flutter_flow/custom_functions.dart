import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

LatLng getCurrentLocation(LatLng currentLocation) {
  if (currentLocation == null ||
      (currentLocation.latitude == 0 && currentLocation.longitude == 0)) {
    return LatLng(24.8058895, 93.9405735);
  }
  return LatLng(24.8058895, 93.9405735);
}

String getLocationtoString(LatLng location) {
  if (location == null || (location.latitude == 0 && location.longitude == 0)) {
    String lat = "Latitude";
    String lng = "Longitude";
    return ('$lat, $lng');
  }
  String lat = location.latitude.toString();
  String lng = location.longitude.toString();
  return ('$lat, $lng');
}

String concat(String code) {
  return code;
  ;
}

String concate(String code) {
  return code;
}
