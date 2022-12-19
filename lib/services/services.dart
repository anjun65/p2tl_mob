import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:p2tl/models/models.dart';
import 'package:http/http.dart' as http;

part 'user_services.dart';
part 'work_services.dart';
part 'ba_pemeriksaan_services.dart';

String baseURL = 'https://p2tl.momen-kita.com/api/';
