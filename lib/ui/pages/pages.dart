import 'dart:io' as i;
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:p2tl/cubit/cubit.dart';
import 'package:p2tl/models/models.dart';
import 'package:p2tl/shared/shared.dart';
import 'package:p2tl/ui/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:supercharged/supercharged.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';
import 'dart:async';

part 'general_page.dart';
part 'sign_in_page.dart';
part 'main_page.dart';
part 'form1_page.dart';
part 'map_page.dart';
part 'form_langsung.dart';
part 'form_langsung_data_app_lama_page.dart';
part 'form_langsung_data_app_baru_page.dart';
part 'form_langsung_data_pemeriksaan_kwh_meter.dart';
part 'form_langsung_data_pemeriksaan_terminal.dart';
part 'form_langsung_data_pemeriksaan_pelindung_kwh_meter.dart';
part 'form_langsung_data_pemeriksaan_pelindung_busbar.dart';
part 'form_langsung_data_pemeriksaan_papan.dart';
part 'form_langsung_data_pemeriksaan_box.dart';
part 'form_langsung_pemeriksaan_pengukuran.dart';
part 'form_langsung_data_wiring_app.dart';
part 'form_langsung_data_hasil_pemeriksaan.dart';

part 'form_tidak_langsung.dart';
part 'form_tidak_langsung_data_app_lama.dart';
part 'form_tidak_langsung_data_app_trafo.dart';
part 'form_tidak_langsung_data_app_kubikal.dart';
part 'form_tidak_langsung_data_pemeriksaan_pelindung.dart';
part 'form_tidak_langsung_data_pemeriksaan_pelindung_ct.dart';
part 'form_tidak_langsung_data_pemeriksaan_kwh_meter.dart';
part 'form_tidak_langsung_data_pemeriksaan_tutup_terminal.dart';
part 'form_tidak_langsung_data_pemeriksaan_box_amr.dart';
part 'form_tidak_langsung_data_pemeriksaan_pintu_kubikel.dart';
part 'form_tidak_langsung_data_pemeriksaan_vt.dart';
part 'form_tidak_langsung_data_pemeriksaan_ct.dart';
part 'form_tidak_langsung_data_pemeriksaan_pintu_gardu.dart';
part 'form_tidak_langsung_data_pemeriksaan_wiring.dart';
part 'form_tidak_langsung_data_pengukuran.dart';
part 'form_tidak_langsung_data_hasil_pemeriksaan.dart';
