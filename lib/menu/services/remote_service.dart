import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';


import '../../hive/hive_manager.dart';
import '../models/pet.dart';

Pet petFromJson(String str) {
  Pet pet = Pet.fromJson(json.decode(str));

  HiveManager.instance.petBox.add(pet);

  return pet;
}

class ApiConstants {
  static String baseUrl = 'https://test1-api.rescuegroups.org/v5';
  static String usersEndpoint = '/public/animals/search/';
  /*static String baseUrl = 'test1-api.rescuegroups.org';
  static String usersEndpoint = '/v5/public/animals/search/';
  static Map<String, String> queryParams = {
    "sort": "-animal.id",
    "limit": "1",
  };*/
}

class ApiService {
  static var client = http.Client();

  Future<Pet?> fetchPets() async {
    //api url = 'https://test1-api.rescuegroups.org/v5/public/animals/search/?sort=-animals.id&limit=10'
    var uri = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint + '?sort=-animals.id&limit=10');
    //var uri2 = Uri.https(ApiConstants.baseUrl, ApiConstants.usersEndpoint, ApiConstants.queryParams);
    bool hasInternetConnection = await InternetConnectionChecker().hasConnection;
    if(hasInternetConnection) {
      var response = await client.get(uri, headers: {
        "Authorization": "nwHp7NK2",
        "Content-Type": "application/vnd.api+json"
      }
      );
      if (response.statusCode == 200) {
        var json = response.body;
        return petFromJson(json);
      } else {
        return null;
      }
    } else {
      Pet hivePet = HiveManager.instance.petBox.values as Pet;
      return hivePet;
    }
  }
}
