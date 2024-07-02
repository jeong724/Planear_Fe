import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:planear/model/schedule.dart';
import 'package:planear/riverpod/calendar_page_riverpod/overall_schedule_riverpod.dart';
import 'package:planear/riverpod/user_riverpod.dart';
import 'package:planear/theme/url_root.dart';
import 'package:http/http.dart' as http;
import 'package:planear/utils/date_utils.dart';

getSchedule(DateTime start, DateTime end, WidgetRef ref) async {
  final url = Uri.parse(
      '${UrlRoot.root}/schedule?startInclusive=${dateTimeToString(start)}&endInclusive=${dateTimeToString(end)}');

  String id = ref.watch(idChangeStateNotifierProvider).toString();
  final response = await http.get(url, headers: {'user-no': id});
  debugPrint(response.body);
  if (response.statusCode == 200) {
    List scheduleJsonList = await jsonDecode(response.body)['success'];
    for (var action in scheduleJsonList) {
      ref
          .read(fullDayStateNotifierProvider.notifier)
          .addScheudle([Schedule.fromJson(action)]);
    }
  }
}
