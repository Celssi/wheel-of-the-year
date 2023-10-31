import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:witch_army_knife/models/library_text.dart';
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

  Future<List<LibraryText>> getCategoryItems(String category) async {
    try {
      final res = await http.get(
        Uri.parse(
          "https://witch-backend-liq43pp4qa-lz.a.run.app/items/libraryText?filter[category][_eq]=$category",
        ),
      );

      Iterable l = json.decode(res.body)['data'];
      List<LibraryText> libraryTexts = List<LibraryText>.from(l.map((model) => LibraryText.fromJson(model)));
      libraryTexts.sort((LibraryText a, LibraryText b) {
        return compareNatural(a.name, b.name);
      });

      return libraryTexts;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<LibraryText> getLibraryText(String name) async {
    try {
      final res = await http.get(
        Uri.parse(
          "https://witch-backend-liq43pp4qa-lz.a.run.app/items/libraryText/$name",
        ),
      );

      return LibraryText.fromJson(jsonDecode(res.body)?['data']);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
