// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PetAdapter extends TypeAdapter<Pet> {
  @override
  final int typeId = 0;

  @override
  Pet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pet(
      meta: fields[0] as Meta?,
      data: (fields[1] as List?)?.cast<PetDatum>(),
      included: (fields[2] as List?)?.cast<Included>(),
    );
  }

  @override
  void write(BinaryWriter writer, Pet obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.meta)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.included);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PetDatumAdapter extends TypeAdapter<PetDatum> {
  @override
  final int typeId = 1;

  @override
  PetDatum read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PetDatum(
      type: fields[0] as PurpleType?,
      id: fields[1] as String?,
      attributes: fields[2] as DatumAttributes?,
      relationships: fields[3] as Relationships?,
    );
  }

  @override
  void write(BinaryWriter writer, PetDatum obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.attributes)
      ..writeByte(3)
      ..write(obj.relationships);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetDatumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DatumAttributesAdapter extends TypeAdapter<DatumAttributes> {
  @override
  final int typeId = 2;

  @override
  DatumAttributes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DatumAttributes(
      isAdoptionPending: fields[0] as bool?,
      ageGroup: fields[1] as String?,
      isBirthDateExact: fields[2] as bool?,
      breedString: fields[3] as String?,
      breedPrimary: fields[4] as String?,
      breedPrimaryId: fields[5] as int?,
      isCatsOk: fields[6] as bool?,
      coatLength: fields[7] as String?,
      isCourtesyListing: fields[8] as bool?,
      isCurrentVaccinations: fields[9] as bool?,
      isDeclawed: fields[10] as bool?,
      descriptionHtml: fields[11] as String?,
      descriptionText: fields[12] as String?,
      isDogsOk: fields[13] as bool?,
      isNeedingFoster: fields[14] as bool?,
      isFound: fields[15] as bool?,
      priority: fields[16] as int?,
      isHousetrained: fields[17] as bool?,
      isKidsOk: fields[18] as bool?,
      name: fields[19] as String?,
      pictureCount: fields[20] as int?,
      pictureThumbnailUrl: fields[21] as String?,
      searchString: fields[22] as String?,
      sex: fields[23] as String?,
      sizeGroup: fields[24] as String?,
      sizeUom: fields[25] as SizeUom?,
      slug: fields[26] as String?,
      isSpecialNeeds: fields[27] as bool?,
      isSponsorable: fields[28] as bool?,
      videoCount: fields[29] as int?,
      videoUrlCount: fields[30] as int?,
      createdDate: fields[31] as DateTime?,
      updatedDate: fields[32] as DateTime?,
      activityLevel: fields[33] as String?,
      adultSexesOk: fields[34] as String?,
      ageString: fields[35] as String?,
      birthDate: fields[36] as DateTime?,
      isBreedMixed: fields[37] as bool?,
      earType: fields[38] as String?,
      energyLevel: fields[39] as String?,
      exerciseNeeds: fields[40] as String?,
      eyeColor: fields[41] as String?,
      fenceNeeds: fields[42] as String?,
      groomingNeeds: fields[43] as String?,
      indoorOutdoor: fields[44] as String?,
      newPeopleReaction: fields[45] as String?,
      obedienceTraining: fields[46] as String?,
      qualities: (fields[47] as List?)?.cast<String>(),
      rescueId: fields[48] as String?,
      sheddingLevel: fields[49] as String?,
      tailType: fields[50] as String?,
      isYardRequired: fields[51] as bool?,
      breedSecondary: fields[52] as String?,
      breedSecondaryId: fields[53] as int?,
      vocalLevel: fields[54] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DatumAttributes obj) {
    writer
      ..writeByte(55)
      ..writeByte(0)
      ..write(obj.isAdoptionPending)
      ..writeByte(1)
      ..write(obj.ageGroup)
      ..writeByte(2)
      ..write(obj.isBirthDateExact)
      ..writeByte(3)
      ..write(obj.breedString)
      ..writeByte(4)
      ..write(obj.breedPrimary)
      ..writeByte(5)
      ..write(obj.breedPrimaryId)
      ..writeByte(6)
      ..write(obj.isCatsOk)
      ..writeByte(7)
      ..write(obj.coatLength)
      ..writeByte(8)
      ..write(obj.isCourtesyListing)
      ..writeByte(9)
      ..write(obj.isCurrentVaccinations)
      ..writeByte(10)
      ..write(obj.isDeclawed)
      ..writeByte(11)
      ..write(obj.descriptionHtml)
      ..writeByte(12)
      ..write(obj.descriptionText)
      ..writeByte(13)
      ..write(obj.isDogsOk)
      ..writeByte(14)
      ..write(obj.isNeedingFoster)
      ..writeByte(15)
      ..write(obj.isFound)
      ..writeByte(16)
      ..write(obj.priority)
      ..writeByte(17)
      ..write(obj.isHousetrained)
      ..writeByte(18)
      ..write(obj.isKidsOk)
      ..writeByte(19)
      ..write(obj.name)
      ..writeByte(20)
      ..write(obj.pictureCount)
      ..writeByte(21)
      ..write(obj.pictureThumbnailUrl)
      ..writeByte(22)
      ..write(obj.searchString)
      ..writeByte(23)
      ..write(obj.sex)
      ..writeByte(24)
      ..write(obj.sizeGroup)
      ..writeByte(25)
      ..write(obj.sizeUom)
      ..writeByte(26)
      ..write(obj.slug)
      ..writeByte(27)
      ..write(obj.isSpecialNeeds)
      ..writeByte(28)
      ..write(obj.isSponsorable)
      ..writeByte(29)
      ..write(obj.videoCount)
      ..writeByte(30)
      ..write(obj.videoUrlCount)
      ..writeByte(31)
      ..write(obj.createdDate)
      ..writeByte(32)
      ..write(obj.updatedDate)
      ..writeByte(33)
      ..write(obj.activityLevel)
      ..writeByte(34)
      ..write(obj.adultSexesOk)
      ..writeByte(35)
      ..write(obj.ageString)
      ..writeByte(36)
      ..write(obj.birthDate)
      ..writeByte(37)
      ..write(obj.isBreedMixed)
      ..writeByte(38)
      ..write(obj.earType)
      ..writeByte(39)
      ..write(obj.energyLevel)
      ..writeByte(40)
      ..write(obj.exerciseNeeds)
      ..writeByte(41)
      ..write(obj.eyeColor)
      ..writeByte(42)
      ..write(obj.fenceNeeds)
      ..writeByte(43)
      ..write(obj.groomingNeeds)
      ..writeByte(44)
      ..write(obj.indoorOutdoor)
      ..writeByte(45)
      ..write(obj.newPeopleReaction)
      ..writeByte(46)
      ..write(obj.obedienceTraining)
      ..writeByte(47)
      ..write(obj.qualities)
      ..writeByte(48)
      ..write(obj.rescueId)
      ..writeByte(49)
      ..write(obj.sheddingLevel)
      ..writeByte(50)
      ..write(obj.tailType)
      ..writeByte(51)
      ..write(obj.isYardRequired)
      ..writeByte(52)
      ..write(obj.breedSecondary)
      ..writeByte(53)
      ..write(obj.breedSecondaryId)
      ..writeByte(54)
      ..write(obj.vocalLevel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DatumAttributesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RelationshipsAdapter extends TypeAdapter<Relationships> {
  @override
  final int typeId = 3;

  @override
  Relationships read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Relationships(
      breeds: fields[0] as Locations?,
      colors: fields[1] as Locations?,
      species: fields[2] as Locations?,
      statuses: fields[3] as Locations?,
      locations: fields[4] as Locations?,
      orgs: fields[5] as Locations?,
      pictures: fields[6] as Locations?,
      patterns: fields[7] as Locations?,
    );
  }

  @override
  void write(BinaryWriter writer, Relationships obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.breeds)
      ..writeByte(1)
      ..write(obj.colors)
      ..writeByte(2)
      ..write(obj.species)
      ..writeByte(3)
      ..write(obj.statuses)
      ..writeByte(4)
      ..write(obj.locations)
      ..writeByte(5)
      ..write(obj.orgs)
      ..writeByte(6)
      ..write(obj.pictures)
      ..writeByte(7)
      ..write(obj.patterns);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RelationshipsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocationsAdapter extends TypeAdapter<Locations> {
  @override
  final int typeId = 4;

  @override
  Locations read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Locations(
      data: (fields[0] as List?)?.cast<LocationsDatum>(),
    );
  }

  @override
  void write(BinaryWriter writer, Locations obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocationsDatumAdapter extends TypeAdapter<LocationsDatum> {
  @override
  final int typeId = 5;

  @override
  LocationsDatum read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationsDatum(
      type: fields[0] as IncludedType?,
      id: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocationsDatum obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationsDatumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IncludedAdapter extends TypeAdapter<Included> {
  @override
  final int typeId = 6;

  @override
  Included read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Included(
      type: fields[0] as IncludedType?,
      id: fields[1] as String?,
      attributes: fields[2] as IncludedAttributes?,
      links: fields[3] as Links?,
    );
  }

  @override
  void write(BinaryWriter writer, Included obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.attributes)
      ..writeByte(3)
      ..write(obj.links);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IncludedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IncludedAttributesAdapter extends TypeAdapter<IncludedAttributes> {
  @override
  final int typeId = 7;

  @override
  IncludedAttributes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IncludedAttributes(
      name: fields[0] as String?,
      singular: fields[1] as String?,
      plural: fields[2] as String?,
      youngSingular: fields[3] as String?,
      youngPlural: fields[4] as String?,
      description: fields[5] as String?,
      street: fields[6] as String?,
      phone: fields[7] as String?,
      lat: fields[8] as double?,
      lon: fields[9] as double?,
      coordinates: fields[10] as String?,
      city: fields[11] as String?,
      state: fields[12] as String?,
      postalcode: fields[13] as String?,
      country: fields[14] as String?,
      email: fields[15] as String?,
      url: fields[16] as String?,
      adoptionProcess: fields[17] as String?,
      about: fields[18] as String?,
      services: fields[19] as String?,
      type: fields[20] as String?,
      citystate: fields[21] as String?,
      original: fields[22] as Large?,
      large: fields[23] as Large?,
      small: fields[24] as Large?,
      order: fields[25] as int?,
      created: fields[26] as DateTime?,
      updated: fields[27] as DateTime?,
      facebookUrl: fields[28] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, IncludedAttributes obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.singular)
      ..writeByte(2)
      ..write(obj.plural)
      ..writeByte(3)
      ..write(obj.youngSingular)
      ..writeByte(4)
      ..write(obj.youngPlural)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.street)
      ..writeByte(7)
      ..write(obj.phone)
      ..writeByte(8)
      ..write(obj.lat)
      ..writeByte(9)
      ..write(obj.lon)
      ..writeByte(10)
      ..write(obj.coordinates)
      ..writeByte(11)
      ..write(obj.city)
      ..writeByte(12)
      ..write(obj.state)
      ..writeByte(13)
      ..write(obj.postalcode)
      ..writeByte(14)
      ..write(obj.country)
      ..writeByte(15)
      ..write(obj.email)
      ..writeByte(16)
      ..write(obj.url)
      ..writeByte(17)
      ..write(obj.adoptionProcess)
      ..writeByte(18)
      ..write(obj.about)
      ..writeByte(19)
      ..write(obj.services)
      ..writeByte(20)
      ..write(obj.type)
      ..writeByte(21)
      ..write(obj.citystate)
      ..writeByte(22)
      ..write(obj.original)
      ..writeByte(23)
      ..write(obj.large)
      ..writeByte(24)
      ..write(obj.small)
      ..writeByte(25)
      ..write(obj.order)
      ..writeByte(26)
      ..write(obj.created)
      ..writeByte(27)
      ..write(obj.updated)
      ..writeByte(28)
      ..write(obj.facebookUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IncludedAttributesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LargeAdapter extends TypeAdapter<Large> {
  @override
  final int typeId = 8;

  @override
  Large read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Large(
      filesize: fields[0] as int?,
      resolutionX: fields[1] as int?,
      resolutionY: fields[2] as int?,
      url: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Large obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.filesize)
      ..writeByte(1)
      ..write(obj.resolutionX)
      ..writeByte(2)
      ..write(obj.resolutionY)
      ..writeByte(3)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LargeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LinksAdapter extends TypeAdapter<Links> {
  @override
  final int typeId = 9;

  @override
  Links read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Links(
      self: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Links obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.self);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MetaAdapter extends TypeAdapter<Meta> {
  @override
  final int typeId = 10;

  @override
  Meta read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Meta(
      count: fields[0] as int?,
      countReturned: fields[1] as int?,
      pageReturned: fields[2] as int?,
      limit: fields[3] as int?,
      pages: fields[4] as int?,
      transactionId: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Meta obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.count)
      ..writeByte(1)
      ..write(obj.countReturned)
      ..writeByte(2)
      ..write(obj.pageReturned)
      ..writeByte(3)
      ..write(obj.limit)
      ..writeByte(4)
      ..write(obj.pages)
      ..writeByte(5)
      ..write(obj.transactionId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MetaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EnumValuesAdapter extends TypeAdapter<EnumValues> {
  @override
  final int typeId = 11;

  @override
  EnumValues read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EnumValues(
      (fields[0] as Map).cast<String, dynamic>(),
    )..reverseMap = (fields[1] as Map?)?.cast<dynamic, String>();
  }

  @override
  void write(BinaryWriter writer, EnumValues obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.map)
      ..writeByte(1)
      ..write(obj.reverseMap);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnumValuesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SizeUomAdapter extends TypeAdapter<SizeUom> {
  @override
  final int typeId = 20;

  @override
  SizeUom read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SizeUom.POUNDS;
      default:
        return SizeUom.POUNDS;
    }
  }

  @override
  void write(BinaryWriter writer, SizeUom obj) {
    switch (obj) {
      case SizeUom.POUNDS:
        writer.writeByte(0);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SizeUomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IncludedTypeAdapter extends TypeAdapter<IncludedType> {
  @override
  final int typeId = 21;

  @override
  IncludedType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return IncludedType.BREEDS;
      case 1:
        return IncludedType.COLORS;
      case 2:
        return IncludedType.LOCATIONS;
      case 3:
        return IncludedType.ORGS;
      case 4:
        return IncludedType.PATTERNS;
      case 5:
        return IncludedType.PICTURES;
      case 6:
        return IncludedType.SPECIES;
      case 7:
        return IncludedType.STATUSES;
      default:
        return IncludedType.BREEDS;
    }
  }

  @override
  void write(BinaryWriter writer, IncludedType obj) {
    switch (obj) {
      case IncludedType.BREEDS:
        writer.writeByte(0);
        break;
      case IncludedType.COLORS:
        writer.writeByte(1);
        break;
      case IncludedType.LOCATIONS:
        writer.writeByte(2);
        break;
      case IncludedType.ORGS:
        writer.writeByte(3);
        break;
      case IncludedType.PATTERNS:
        writer.writeByte(4);
        break;
      case IncludedType.PICTURES:
        writer.writeByte(5);
        break;
      case IncludedType.SPECIES:
        writer.writeByte(6);
        break;
      case IncludedType.STATUSES:
        writer.writeByte(7);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IncludedTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PurpleTypeAdapter extends TypeAdapter<PurpleType> {
  @override
  final int typeId = 22;

  @override
  PurpleType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PurpleType.ANIMALS;
      default:
        return PurpleType.ANIMALS;
    }
  }

  @override
  void write(BinaryWriter writer, PurpleType obj) {
    switch (obj) {
      case PurpleType.ANIMALS:
        writer.writeByte(0);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurpleTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
