// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Beer _$BeerFromJson(Map<String, dynamic> json) => Beer(
      id: json['id'] as int,
      name: json['name'] as String,
      tagline: json['tagline'] as String,
      first_brewed: json['first_brewed'] as String,
      description: json['description'] as String,
      image_url: json['image_url'] as String? ?? "",
      abv: (json['abv'] as num).toDouble(),
      ibu: (json['ibu'] as num?)?.toDouble() ?? 0,
      target_fg: json['target_fg'] as int,
      target_og: (json['target_og'] as num).toDouble(),
      ebc: (json['ebc'] as num?)?.toDouble() ?? 0,
      srm: (json['srm'] as num?)?.toDouble() ?? 0,
      ph: (json['ph'] as num).toDouble(),
      attenuation_level: (json['attenuation_level'] as num).toDouble(),
      volume: Volume.fromJson(json['volume'] as Map<String, dynamic>),
      boil_volume: Volume.fromJson(json['boil_volume'] as Map<String, dynamic>),
      method: Method.fromJson(json['method'] as Map<String, dynamic>),
      ingredients:
          Ingredients.fromJson(json['ingredients'] as Map<String, dynamic>),
      food_pairing: (json['food_pairing'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      brewers_tips: json['brewers_tips'] as String,
      contributed_by: json['contributed_by'] as String,
    );

Map<String, dynamic> _$BeerToJson(Beer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tagline': instance.tagline,
      'first_brewed': instance.first_brewed,
      'description': instance.description,
      'image_url': instance.image_url,
      'abv': instance.abv,
      'ibu': instance.ibu,
      'target_fg': instance.target_fg,
      'target_og': instance.target_og,
      'ebc': instance.ebc,
      'srm': instance.srm,
      'ph': instance.ph,
      'attenuation_level': instance.attenuation_level,
      'volume': instance.volume,
      'boil_volume': instance.boil_volume,
      'method': instance.method,
      'ingredients': instance.ingredients,
      'food_pairing': instance.food_pairing,
      'brewers_tips': instance.brewers_tips,
      'contributed_by': instance.contributed_by,
    };

Volume _$VolumeFromJson(Map<String, dynamic> json) => Volume(
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$VolumeToJson(Volume instance) => <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

Method _$MethodFromJson(Map<String, dynamic> json) => Method(
      mashTemp: (json['mashTemp'] as List<dynamic>?)
              ?.map((e) => MashTemp.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      unit: json['unit'] as String? ?? "",
    );

Map<String, dynamic> _$MethodToJson(Method instance) => <String, dynamic>{
      'mashTemp': instance.mashTemp,
      'unit': instance.unit,
    };

MashTemp _$MashTempFromJson(Map<String, dynamic> json) => MashTemp(
      temp: Temp.fromJson(json['temp'] as Map<String, dynamic>),
      duration: (json['duration'] as num).toDouble(),
    );

Map<String, dynamic> _$MashTempToJson(MashTemp instance) => <String, dynamic>{
      'temp': instance.temp,
      'duration': instance.duration,
    };

Temp _$TempFromJson(Map<String, dynamic> json) => Temp(
      value: (json['value'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) => Ingredients(
      malt: (json['malt'] as List<dynamic>)
          .map((e) => Cereal.fromJson(e as Map<String, dynamic>))
          .toList(),
      hops: (json['hops'] as List<dynamic>)
          .map((e) => Cereal.fromJson(e as Map<String, dynamic>))
          .toList(),
      yeast: json['yeast'] as String,
    );

Map<String, dynamic> _$IngredientsToJson(Ingredients instance) =>
    <String, dynamic>{
      'malt': instance.malt,
      'hops': instance.hops,
      'yeast': instance.yeast,
    };

Cereal _$CerealFromJson(Map<String, dynamic> json) => Cereal(
      name: json['name'] as String,
      amount: Volume.fromJson(json['amount'] as Map<String, dynamic>),
      add: json['add'] as String?,
      atribute: json['atribute'] as String?,
    );

Map<String, dynamic> _$CerealToJson(Cereal instance) => <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'add': instance.add,
      'atribute': instance.atribute,
    };
