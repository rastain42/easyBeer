import 'dart:convert';
import 'package:flutter_stacked_nested_navigation/models/beer.dart';
import 'package:http/http.dart' as http;

class BeerService {
  Future<Beer> getRandomBeer() async {
    final response =
        await http.get(Uri.parse("https://api.punkapi.com/v2/beers/random"));
    return Beer.fromJson(jsonDecode(response.body)[0]);
  }
}
