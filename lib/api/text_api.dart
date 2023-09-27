import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:witch_army_knife/models/sabbat_text.dart';
import 'package:witch_army_knife/models/tarot_text.dart';

class TextApi {
  Future<SabbatText> getSabbatText(String name) async {
    try {
      final res = await http.get(
        Uri.parse(
          "https://witch-backend-liq43pp4qa-lz.a.run.app/items/sabbatText/$name",
        ),
      );

      return SabbatText.fromJson(jsonDecode(res.body)['data']);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<TarotText> getTarotText(String name) async {
    try {
      final res = await http.get(
        Uri.parse(
          "https://witch-backend-liq43pp4qa-lz.a.run.app/items/tarotText/$name",
        ),
      );

      return TarotText.fromJson(jsonDecode(res.body)?['data']);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
