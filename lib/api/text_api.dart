import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:witch_army_blade/models/sabbat_text.dart';

class TextApi {
  Future<SabbatText> getText(String name) async {
    try {
      final res = await http.get(
        Uri.parse(
          "https://celssi-wheel-of-the-year-backend-liq43pp4qa-uc.a.run.app/sabbats/$name",
        ),
      );

      return SabbatText.fromJson(jsonDecode(res.body));
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
