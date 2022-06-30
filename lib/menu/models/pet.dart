import 'package:hive_flutter/hive_flutter.dart';

part 'pet.g.dart';

@HiveType(typeId: 0)
class Pet {
  Pet({
    this.meta,
    this.data,
    this.included,
  });

  @HiveField(0)
  Meta? meta;
  @HiveField(1)
  List<PetDatum>? data;
  @HiveField(2)
  List<Included>? included;

  factory Pet.fromJson(Map<String, dynamic> json) => Pet(
    meta: Meta.fromJson(json["meta"]),
    data: List<PetDatum>.from(json["data"].map((x) => PetDatum.fromJson(x))),
    included: List<Included>.from(json["included"].map((x) => Included.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta?.toJson(),
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "included": List<dynamic>.from(included!.map((x) => x.toJson())),
  };
}

@HiveType(typeId: 1)
class PetDatum {
  PetDatum({
    this.type,
    this.id,
    this.attributes,
    this.relationships,
  });

  @HiveField(0)
  PurpleType? type;
  @HiveField(1)
  String? id;
  @HiveField(2)
  DatumAttributes? attributes;
  @HiveField(3)
  Relationships? relationships;

  factory PetDatum.fromJson(Map<String, dynamic> json) => PetDatum(
    type: purpleTypeValues.map[json["type"]],
    id: json["id"],
    attributes: DatumAttributes.fromJson(json["attributes"]),
    relationships: Relationships.fromJson(json["relationships"]),
  );

  Map<String, dynamic> toJson() => {
    "type": purpleTypeValues.reverse?[type],
    "id": id,
    "attributes": attributes?.toJson(),
    "relationships": relationships?.toJson(),
  };
}

@HiveType(typeId: 2)
class DatumAttributes {
  DatumAttributes({
    this.isAdoptionPending,
    this.ageGroup,
    this.isBirthDateExact,
    this.breedString,
    this.breedPrimary,
    this.breedPrimaryId,
    this.isCatsOk,
    this.coatLength,
    this.isCourtesyListing,
    this.isCurrentVaccinations,
    this.isDeclawed,
    this.descriptionHtml,
    this.descriptionText,
    this.isDogsOk,
    this.isNeedingFoster,
    this.isFound,
    this.priority,
    this.isHousetrained,
    this.isKidsOk,
    this.name,
    this.pictureCount,
    this.pictureThumbnailUrl,
    this.searchString,
    this.sex,
    this.sizeGroup,
    this.sizeUom,
    this.slug,
    this.isSpecialNeeds,
    this.isSponsorable,
    this.videoCount,
    this.videoUrlCount,
    this.createdDate,
    this.updatedDate,
    this.activityLevel,
    this.adultSexesOk,
    this.ageString,
    this.birthDate,
    this.isBreedMixed,
    this.earType,
    this.energyLevel,
    this.exerciseNeeds,
    this.eyeColor,
    this.fenceNeeds,
    this.groomingNeeds,
    this.indoorOutdoor,
    this.newPeopleReaction,
    this.obedienceTraining,
    this.qualities,
    this.rescueId,
    this.sheddingLevel,
    this.tailType,
    this.isYardRequired,
    this.breedSecondary,
    this.breedSecondaryId,
    this.vocalLevel,
  });

  @HiveField(0)
  bool? isAdoptionPending;
  @HiveField(1)
  String? ageGroup;
  @HiveField(2)
  bool? isBirthDateExact;
  @HiveField(3)
  String? breedString;
  @HiveField(4)
  String? breedPrimary;
  @HiveField(5)
  int? breedPrimaryId;
  @HiveField(6)
  bool? isCatsOk;
  @HiveField(7)
  String? coatLength;
  @HiveField(8)
  bool? isCourtesyListing;
  @HiveField(9)
  bool? isCurrentVaccinations;
  @HiveField(10)
  bool? isDeclawed;
  @HiveField(11)
  String? descriptionHtml;
  @HiveField(12)
  String? descriptionText;
  @HiveField(13)
  bool? isDogsOk;
  @HiveField(14)
  bool? isNeedingFoster;
  @HiveField(15)
  bool? isFound;
  @HiveField(16)
  int? priority;
  @HiveField(17)
  bool? isHousetrained;
  @HiveField(18)
  bool? isKidsOk;
  @HiveField(19)
  String? name;
  @HiveField(20)
  int? pictureCount;
  @HiveField(21)
  String? pictureThumbnailUrl;
  @HiveField(22)
  String? searchString;
  @HiveField(23)
  String? sex;
  @HiveField(24)
  String? sizeGroup;
  @HiveField(25)
  SizeUom? sizeUom;
  @HiveField(26)
  String? slug;
  @HiveField(27)
  bool? isSpecialNeeds;
  @HiveField(28)
  bool? isSponsorable;
  @HiveField(29)
  int? videoCount;
  @HiveField(30)
  int? videoUrlCount;
  @HiveField(31)
  DateTime? createdDate;
  @HiveField(32)
  DateTime? updatedDate;
  @HiveField(33)
  String? activityLevel;
  @HiveField(34)
  String? adultSexesOk;
  @HiveField(35)
  String? ageString;
  @HiveField(36)
  DateTime? birthDate;
  @HiveField(37)
  bool? isBreedMixed;
  @HiveField(38)
  String? earType;
  @HiveField(39)
  String? energyLevel;
  @HiveField(40)
  String? exerciseNeeds;
  @HiveField(41)
  String? eyeColor;
  @HiveField(42)
  String? fenceNeeds;
  @HiveField(43)
  String? groomingNeeds;
  @HiveField(44)
  String? indoorOutdoor;
  @HiveField(45)
  String? newPeopleReaction;
  @HiveField(46)
  String? obedienceTraining;
  @HiveField(47)
  List<String>? qualities;
  @HiveField(48)
  String? rescueId;
  @HiveField(49)
  String? sheddingLevel;
  @HiveField(50)
  String? tailType;
  @HiveField(51)
  bool? isYardRequired;
  @HiveField(52)
  String? breedSecondary;
  @HiveField(53)
  int? breedSecondaryId;
  @HiveField(54)
  String? vocalLevel;

  factory DatumAttributes.fromJson(Map<String, dynamic> json) => DatumAttributes(
    isAdoptionPending: json["isAdoptionPending"],
    ageGroup: json["ageGroup"] == null ? null : json["ageGroup"],
    isBirthDateExact: json["isBirthDateExact"],
    breedString: json["breedString"],
    breedPrimary: json["breedPrimary"] == null ? null : json["breedPrimary"],
    breedPrimaryId: json["breedPrimaryId"] == null ? null : json["breedPrimaryId"],
    isCatsOk: json["isCatsOk"] == null ? null : json["isCatsOk"],
    coatLength: json["coatLength"] == null ? null : json["coatLength"],
    isCourtesyListing: json["isCourtesyListing"],
    isCurrentVaccinations: json["isCurrentVaccinations"] == null ? null : json["isCurrentVaccinations"],
    isDeclawed: json["isDeclawed"] == null ? null : json["isDeclawed"],
    descriptionHtml: json["descriptionHtml"],
    descriptionText: json["descriptionText"] == null ? null : json["descriptionText"],
    isDogsOk: json["isDogsOk"] == null ? null : json["isDogsOk"],
    isNeedingFoster: json["isNeedingFoster"] == null ? null : json["isNeedingFoster"],
    isFound: json["isFound"],
    priority: json["priority"],
    isHousetrained: json["isHousetrained"] == null ? null : json["isHousetrained"],
    isKidsOk: json["isKidsOk"] == null ? null : json["isKidsOk"],
    name: json["name"],
    pictureCount: json["pictureCount"],
    pictureThumbnailUrl: json["pictureThumbnailUrl"] == null ? null : json["pictureThumbnailUrl"],
    searchString: json["searchString"],
    sex: json["sex"] == null ? null : json["sex"],
    sizeGroup: json["sizeGroup"] == null ? null : json["sizeGroup"],
    sizeUom: sizeUomValues.map[json["sizeUOM"]],
    slug: json["slug"],
    isSpecialNeeds: json["isSpecialNeeds"] == null ? null : json["isSpecialNeeds"],
    isSponsorable: json["isSponsorable"],
    videoCount: json["videoCount"],
    videoUrlCount: json["videoUrlCount"],
    createdDate: DateTime.parse(json["createdDate"]),
    updatedDate: DateTime.parse(json["updatedDate"]),
    activityLevel: json["activityLevel"] == null ? null : json["activityLevel"],
    adultSexesOk: json["adultSexesOk"] == null ? null : json["adultSexesOk"],
    ageString: json["ageString"] == null ? null : json["ageString"],
    birthDate: json["birthDate"] == null ? null : DateTime.parse(json["birthDate"]),
    isBreedMixed: json["isBreedMixed"] == null ? null : json["isBreedMixed"],
    earType: json["earType"] == null ? null : json["earType"],
    energyLevel: json["energyLevel"] == null ? null : json["energyLevel"],
    exerciseNeeds: json["exerciseNeeds"] == null ? null : json["exerciseNeeds"],
    eyeColor: json["eyeColor"] == null ? null : json["eyeColor"],
    fenceNeeds: json["fenceNeeds"] == null ? null : json["fenceNeeds"],
    groomingNeeds: json["groomingNeeds"] == null ? null : json["groomingNeeds"],
    indoorOutdoor: json["indoorOutdoor"] == null ? null : json["indoorOutdoor"],
    newPeopleReaction: json["newPeopleReaction"] == null ? null : json["newPeopleReaction"],
    obedienceTraining: json["obedienceTraining"] == null ? null : json["obedienceTraining"],
    qualities: json["qualities"] == null ? null : List<String>.from(json["qualities"].map((x) => x)),
    rescueId: json["rescueId"] == null ? null : json["rescueId"],
    sheddingLevel: json["sheddingLevel"] == null ? null : json["sheddingLevel"],
    tailType: json["tailType"] == null ? null : json["tailType"],
    isYardRequired: json["isYardRequired"] == null ? null : json["isYardRequired"],
    breedSecondary: json["breedSecondary"] == null ? null : json["breedSecondary"],
    breedSecondaryId: json["breedSecondaryId"] == null ? null : json["breedSecondaryId"],
    vocalLevel: json["vocalLevel"] == null ? null : json["vocalLevel"],
  );

  Map<String, dynamic> toJson() => {
    "isAdoptionPending": isAdoptionPending,
    "ageGroup": ageGroup == null ? null : ageGroup,
    "isBirthDateExact": isBirthDateExact,
    "breedString": breedString,
    "breedPrimary": breedPrimary == null ? null : breedPrimary,
    "breedPrimaryId": breedPrimaryId == null ? null : breedPrimaryId,
    "isCatsOk": isCatsOk == null ? null : isCatsOk,
    "coatLength": coatLength == null ? null : coatLength,
    "isCourtesyListing": isCourtesyListing,
    "isCurrentVaccinations": isCurrentVaccinations == null ? null : isCurrentVaccinations,
    "isDeclawed": isDeclawed == null ? null : isDeclawed,
    "descriptionHtml": descriptionHtml,
    "descriptionText": descriptionText == null ? null : descriptionText,
    "isDogsOk": isDogsOk == null ? null : isDogsOk,
    "isNeedingFoster": isNeedingFoster == null ? null : isNeedingFoster,
    "isFound": isFound,
    "priority": priority,
    "isHousetrained": isHousetrained == null ? null : isHousetrained,
    "isKidsOk": isKidsOk == null ? null : isKidsOk,
    "name": name,
    "pictureCount": pictureCount,
    "pictureThumbnailUrl": pictureThumbnailUrl == null ? null : pictureThumbnailUrl,
    "searchString": searchString,
    "sex": sex == null ? null : sex,
    "sizeGroup": sizeGroup == null ? null : sizeGroup,
    "sizeUOM": sizeUomValues.reverse?[sizeUom],
    "slug": slug,
    "isSpecialNeeds": isSpecialNeeds == null ? null : isSpecialNeeds,
    "isSponsorable": isSponsorable,
    "videoCount": videoCount,
    "videoUrlCount": videoUrlCount,
    "createdDate": createdDate?.toIso8601String(),
    "updatedDate": updatedDate?.toIso8601String(),
    "activityLevel": activityLevel == null ? null : activityLevel,
    "adultSexesOk": adultSexesOk == null ? null : adultSexesOk,
    "ageString": ageString == null ? null : ageString,
    "birthDate": birthDate == null ? null : birthDate?.toIso8601String(),
    "isBreedMixed": isBreedMixed == null ? null : isBreedMixed,
    "earType": earType == null ? null : earType,
    "energyLevel": energyLevel == null ? null : energyLevel,
    "exerciseNeeds": exerciseNeeds == null ? null : exerciseNeeds,
    "eyeColor": eyeColor == null ? null : eyeColor,
    "fenceNeeds": fenceNeeds == null ? null : fenceNeeds,
    "groomingNeeds": groomingNeeds == null ? null : groomingNeeds,
    "indoorOutdoor": indoorOutdoor == null ? null : indoorOutdoor,
    "newPeopleReaction": newPeopleReaction == null ? null : newPeopleReaction,
    "obedienceTraining": obedienceTraining == null ? null : obedienceTraining,
    "qualities": qualities == null ? null : List<dynamic>.from(qualities!.map((x) => x)),
    "rescueId": rescueId == null ? null : rescueId,
    "sheddingLevel": sheddingLevel == null ? null : sheddingLevel,
    "tailType": tailType == null ? null : tailType,
    "isYardRequired": isYardRequired == null ? null : isYardRequired,
    "breedSecondary": breedSecondary == null ? null : breedSecondary,
    "breedSecondaryId": breedSecondaryId == null ? null : breedSecondaryId,
    "vocalLevel": vocalLevel == null ? null : vocalLevel,
  };
}

@HiveType(typeId: 20)
enum SizeUom {
  @HiveField(0)
  POUNDS
}

final sizeUomValues = EnumValues({
  "Pounds": SizeUom.POUNDS
});

@HiveType(typeId: 3)
class Relationships {
  Relationships({
    this.breeds,
    this.colors,
    this.species,
    this.statuses,
    this.locations,
    this.orgs,
    this.pictures,
    this.patterns,
  });

  @HiveField(0)
  Locations? breeds;
  @HiveField(1)
  Locations? colors;
  @HiveField(2)
  Locations? species;
  @HiveField(3)
  Locations? statuses;
  @HiveField(4)
  Locations? locations;
  @HiveField(5)
  Locations? orgs;
  @HiveField(6)
  Locations? pictures;
  @HiveField(7)
  Locations? patterns;

  factory Relationships.fromJson(Map<String, dynamic> json) => Relationships(
    breeds: json["breeds"] == null ? null : Locations.fromJson(json["breeds"]),
    colors: json["colors"] == null ? null : Locations.fromJson(json["colors"]),
    species: Locations.fromJson(json["species"]),
    statuses: Locations.fromJson(json["statuses"]),
    locations: Locations.fromJson(json["locations"]),
    orgs: Locations.fromJson(json["orgs"]),
    pictures: json["pictures"] == null ? null : Locations.fromJson(json["pictures"]),
    patterns: json["patterns"] == null ? null : Locations.fromJson(json["patterns"]),
  );

  Map<String, dynamic> toJson() => {
    "breeds": breeds == null ? null : breeds?.toJson(),
    "colors": colors == null ? null : colors?.toJson(),
    "species": species?.toJson(),
    "statuses": statuses?.toJson(),
    "locations": locations?.toJson(),
    "orgs": orgs?.toJson(),
    "pictures": pictures == null ? null : pictures?.toJson(),
    "patterns": patterns == null ? null : patterns?.toJson(),
  };
}

@HiveType(typeId: 4)
class Locations {
  Locations({
    this.data,
  });

  @HiveField(0)
  List<LocationsDatum>? data;

  factory Locations.fromJson(Map<String, dynamic> json) => Locations(
    data: List<LocationsDatum>.from(json["data"].map((x) => LocationsDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

@HiveType(typeId: 5)
class LocationsDatum {
  LocationsDatum({
    this.type,
    this.id,
  });

  @HiveField(0)
  IncludedType? type;
  @HiveField(1)
  String? id;

  factory LocationsDatum.fromJson(Map<String, dynamic> json) => LocationsDatum(
    type: includedTypeValues.map[json["type"]],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "type": includedTypeValues.reverse?[type],
    "id": id,
  };
}

@HiveType(typeId: 21)
enum IncludedType {
  @HiveField(0)
  BREEDS,
  @HiveField(1)
  COLORS,
  @HiveField(2)
  LOCATIONS,
  @HiveField(3)
  ORGS,
  @HiveField(4)
  PATTERNS,
  @HiveField(5)
  PICTURES,
  @HiveField(6)
  SPECIES,
  @HiveField(7)
  STATUSES
}

final includedTypeValues = EnumValues({
  "breeds": IncludedType.BREEDS,
  "colors": IncludedType.COLORS,
  "locations": IncludedType.LOCATIONS,
  "orgs": IncludedType.ORGS,
  "patterns": IncludedType.PATTERNS,
  "pictures": IncludedType.PICTURES,
  "species": IncludedType.SPECIES,
  "statuses": IncludedType.STATUSES
});

@HiveType(typeId: 22)
enum PurpleType { 
  @HiveField(0)
  ANIMALS 
}

final purpleTypeValues = EnumValues({
  "animals": PurpleType.ANIMALS
});

@HiveType(typeId: 6)
class Included {
  Included({
    this.type,
    this.id,
    this.attributes,
    this.links,
  });

  @HiveField(0)
  IncludedType? type;
  @HiveField(1)
  String? id;
  @HiveField(2)
  IncludedAttributes? attributes;
  @HiveField(3)
  Links? links;

  factory Included.fromJson(Map<String, dynamic> json) => Included(
    type: includedTypeValues.map[json["type"]],
    id: json["id"],
    attributes: IncludedAttributes.fromJson(json["attributes"]),
    links: json["links"] == null ? null : Links.fromJson(json["links"]),
  );

  Map<String, dynamic> toJson() => {
    "type": includedTypeValues.reverse?[type],
    "id": id,
    "attributes": attributes?.toJson(),
    "links": links == null ? null : links!.toJson(),
  };
}

@HiveType(typeId: 7)
class IncludedAttributes {
  IncludedAttributes({
    this.name,
    this.singular,
    this.plural,
    this.youngSingular,
    this.youngPlural,
    this.description,
    this.street,
    this.phone,
    this.lat,
    this.lon,
    this.coordinates,
    this.city,
    this.state,
    this.postalcode,
    this.country,
    this.email,
    this.url,
    this.adoptionProcess,
    this.about,
    this.services,
    this.type,
    this.citystate,
    this.original,
    this.large,
    this.small,
    this.order,
    this.created,
    this.updated,
    this.facebookUrl,
  });

  @HiveField(0)
  String? name;
  @HiveField(1)
  String? singular;
  @HiveField(2)
  String? plural;
  @HiveField(3)
  String? youngSingular;
  @HiveField(4)
  String? youngPlural;
  @HiveField(5)
  String? description;
  @HiveField(6)
  String? street;
  @HiveField(7)
  String? phone;
  @HiveField(8)
  double? lat;
  @HiveField(9)
  double? lon;
  @HiveField(10)
  String? coordinates;
  @HiveField(11)
  String? city;
  @HiveField(12)
  String? state;
  @HiveField(13)
  String? postalcode;
  @HiveField(14)
  String? country;
  @HiveField(15)
  String? email;
  @HiveField(16)
  String? url;
  @HiveField(17)
  String? adoptionProcess;
  @HiveField(18)
  String? about;
  @HiveField(19)
  String? services;
  @HiveField(20)
  String? type;
  @HiveField(21)
  String? citystate;
  @HiveField(22)
  Large? original;
  @HiveField(23)
  Large? large;
  @HiveField(24)
  Large? small;
  @HiveField(25)
  int? order;
  @HiveField(26)
  DateTime? created;
  @HiveField(27)
  DateTime? updated;
  @HiveField(28)
  String? facebookUrl;

  factory IncludedAttributes.fromJson(Map<String, dynamic> json) => IncludedAttributes(
    name: json["name"] == null ? null : json["name"],
    singular: json["singular"] == null ? null : json["singular"],
    plural: json["plural"] == null ? null : json["plural"],
    youngSingular: json["youngSingular"] == null ? null : json["youngSingular"],
    youngPlural: json["youngPlural"] == null ? null : json["youngPlural"],
    description: json["description"] == null ? null : json["description"],
    street: json["street"] == null ? null : json["street"],
    phone: json["phone"] == null ? null : json["phone"],
    lat: json["lat"] == null ? null : json["lat"].toDouble(),
    lon: json["lon"] == null ? null : json["lon"].toDouble(),
    coordinates: json["coordinates"] == null ? null : json["coordinates"],
    city: json["city"] == null ? null : json["city"],
    state: json["state"] == null ? null : json["state"],
    postalcode: json["postalcode"] == null ? null : json["postalcode"],
    country: json["country"] == null ? null : json["country"],
    email: json["email"] == null ? null : json["email"],
    url: json["url"] == null ? null : json["url"],
    adoptionProcess: json["adoptionProcess"] == null ? null : json["adoptionProcess"],
    about: json["about"] == null ? null : json["about"],
    services: json["services"] == null ? null : json["services"],
    type: json["type"] == null ? null : json["type"],
    citystate: json["citystate"] == null ? null : json["citystate"],
    original: json["original"] == null ? null : Large.fromJson(json["original"]),
    large: json["large"] == null ? null : Large.fromJson(json["large"]),
    small: json["small"] == null ? null : Large.fromJson(json["small"]),
    order: json["order"] == null ? null : json["order"],
    created: json["created"] == null ? null : DateTime.parse(json["created"]),
    updated: json["updated"] == null ? null : DateTime.parse(json["updated"]),
    facebookUrl: json["facebookUrl"] == null ? null : json["facebookUrl"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "singular": singular == null ? null : singular,
    "plural": plural == null ? null : plural,
    "youngSingular": youngSingular == null ? null : youngSingular,
    "youngPlural": youngPlural == null ? null : youngPlural,
    "description": description == null ? null : description,
    "street": street == null ? null : street,
    "phone": phone == null ? null : phone,
    "lat": lat == null ? null : lat,
    "lon": lon == null ? null : lon,
    "coordinates": coordinates == null ? null : coordinates,
    "city": city == null ? null : city,
    "state": state == null ? null : state,
    "postalcode": postalcode == null ? null : postalcode,
    "country": country == null ? null : country,
    "email": email == null ? null : email,
    "url": url == null ? null : url,
    "adoptionProcess": adoptionProcess == null ? null : adoptionProcess,
    "about": about == null ? null : about,
    "services": services == null ? null : services,
    "type": type == null ? null : type,
    "citystate": citystate == null ? null : citystate,
    "original": original == null ? null : original!.toJson(),
    "large": large == null ? null : large!.toJson(),
    "small": small == null ? null : small!.toJson(),
    "order": order == null ? null : order,
    "created": created == null ? null : created!.toIso8601String(),
    "updated": updated == null ? null : updated!.toIso8601String(),
    "facebookUrl": facebookUrl == null ? null : facebookUrl,
  };
}

@HiveType(typeId: 8)
class Large {
  Large({
    this.filesize,
    this.resolutionX,
    this.resolutionY,
    this.url,
  });

  @HiveField(0)
  int? filesize;
  @HiveField(1)
  int? resolutionX;
  @HiveField(2)
  int? resolutionY;
  @HiveField(3)
  String? url;

  factory Large.fromJson(Map<String, dynamic> json) => Large(
    filesize: json["filesize"],
    resolutionX: json["resolutionX"],
    resolutionY: json["resolutionY"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "filesize": filesize,
    "resolutionX": resolutionX,
    "resolutionY": resolutionY,
    "url": url,
  };
}

@HiveType(typeId: 9)
class Links {
  Links({
    this.self,
  });

  @HiveField(0)
  String? self;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: json["self"],
  );

  Map<String, dynamic> toJson() => {
    "self": self,
  };
}

@HiveType(typeId: 10)
class Meta {
  Meta({
    this.count,
    this.countReturned,
    this.pageReturned,
    this.limit,
    this.pages,
    this.transactionId,
  });

  @HiveField(0)
  int? count;
  @HiveField(1)
  int? countReturned;
  @HiveField(2)
  int? pageReturned;
  @HiveField(3)
  int? limit;
  @HiveField(4)
  int? pages;
  @HiveField(5)
  String? transactionId;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    count: json["count"],
    countReturned: json["countReturned"],
    pageReturned: json["pageReturned"],
    limit: json["limit"],
    pages: json["pages"],
    transactionId: json["transactionId"],
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "countReturned": countReturned,
    "pageReturned": pageReturned,
    "limit": limit,
    "pages": pages,
    "transactionId": transactionId,
  };
}

@HiveType(typeId: 11)
class EnumValues<T> {

  @HiveField(0)
  Map<String, T> map;

  @HiveField(1)
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
