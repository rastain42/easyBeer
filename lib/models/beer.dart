// ignore_for_file: non_constant_identifier_names

import 'dart:core';
import 'package:json_annotation/json_annotation.dart';

part 'beer.g.dart';

@JsonSerializable()
class Beer {
  const Beer({
    required this.id,
    required this.name,
    required this.tagline,
    required this.first_brewed,
    required this.description,
    this.image_url = "",
    required this.abv,
    this.ibu = 0,
    required this.target_fg,
    required this.target_og,
    this.ebc = 0,
    this.srm = 0,
    required this.ph,
    required this.attenuation_level,
    required this.volume,
    required this.boil_volume,
    required this.method,
    required this.ingredients,
    required this.food_pairing,
    required this.brewers_tips,
    required this.contributed_by,
  });
  final int id;
  final String name;
  final String tagline;
  final String first_brewed;
  final String description;
  final String image_url;
  //alcool by volume
  final double abv;
  //amertume
  final double ibu;
  // ffinal gravity
  final int target_fg;
  //original gravity
  final double target_og;
  // indicateur de couleur
  final double ebc;
  // indicateur de couleur
  final double srm;
  // ph
  final double ph;
  // sucre consommé
  final double attenuation_level;

  final Volume volume;
  // liquide avant fermentation
  final Volume boil_volume;
  final Method method;
  final Ingredients ingredients;
  final List<String> food_pairing;
  final String brewers_tips;
  final String contributed_by;

  factory Beer.fromJson(Map<String, dynamic> json) => _$BeerFromJson(json);
}

@JsonSerializable()
class Volume {
  const Volume({
    required this.value,
    required this.unit,
  });
  final double value;
  final String unit;
  factory Volume.fromJson(Map<String, dynamic> json) => _$VolumeFromJson(json);
}

@JsonSerializable()
class Method {
  const Method({
    this.mashTemp = const [],
    this.unit = "",
  });
  final List<MashTemp> mashTemp;
  final String unit;
  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);
}

//temperature de la purée
@JsonSerializable()
class MashTemp {
  const MashTemp({
    required this.temp,
    required this.duration,
  });
  final Temp temp;
  final double duration;
  factory MashTemp.fromJson(Map<String, dynamic> json) =>
      _$MashTempFromJson(json);
}

@JsonSerializable()
class Temp {
  const Temp({
    required this.value,
    required this.unit,
  });
  final double value;
  final String unit;
  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}

//hops houblon
@JsonSerializable()
class Ingredients {
  const Ingredients({
    required this.malt,
    required this.hops,
    required this.yeast,
  });
  final List<Cereal> malt;
  final List<Cereal> hops;
  final String yeast;
  factory Ingredients.fromJson(Map<String, dynamic> json) =>
      _$IngredientsFromJson(json);
}

@JsonSerializable()
class Cereal {
  const Cereal({
    required this.name,
    required this.amount,
    required this.add,
    required this.atribute,
  });
  final String name;
  final Volume amount;
  final String? add;
  final String? atribute;
  factory Cereal.fromJson(Map<String, dynamic> json) => _$CerealFromJson(json);
}
