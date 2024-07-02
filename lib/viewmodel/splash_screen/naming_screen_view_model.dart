import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:planear/main.dart';
import 'package:planear/riverpod/user_riverpod.dart';
import 'package:planear/theme/local_db.dart';
import 'package:planear/theme/url_root.dart';
import 'package:http/http.dart' as http;

Future<bool> checkName(String name) async {
  final url = Uri.parse('${UrlRoot.root}/user/check');
  final response = await http.post(url,
      body: jsonEncode({'name': name}),
      headers: {'Content-Type': 'application/json'});
  if (response.statusCode == 200) {
    debugPrint('이름 확인 완');

    return true;
  } else if (response.statusCode == 400) {
    return false;
  }
  return false;
}

Future makeNewName(BuildContext context, String name, WidgetRef ref) async {
  final url = Uri.parse('${UrlRoot.root}/user');
  final response = await http.post(url,
      body: jsonEncode({'name': name}),
      headers: {'Content-Type': 'application/json'});
  if (response.statusCode == 200) {
    debugPrint('이름 생성 완');
    int uid = jsonDecode(response.body)['success']['id'];
    ref.read(nameChangeStateNotifierProvider.notifier).setName(name);
    ref.read(idChangeStateNotifierProvider.notifier).setId(uid);
    await storage.write(key: LocalDB.name, value: name);
    await storage.write(key: LocalDB.id, value: uid.toString());
    debugPrint('이름 $name $uid');

  } else {
    debugPrint('이름 생성 오류 - ${response.statusCode}');
  }
}
