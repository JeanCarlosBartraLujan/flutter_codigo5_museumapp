import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_codigo5_museumapp/models/museum_model.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class APIService {
  Logger logger = Logger();

  Future<List<MuseumModel>> getMuseums() async {
    try {
      String _path = "http://192.168.18.118:8000/API/museum/";
      Uri _uri = Uri.parse(_path);
      http.Response response = await http.get(_uri);
      if (response.statusCode == 200) {
        String source = const Utf8Decoder().convert(response.bodyBytes);
        List museums = json.decode(source);
        List<MuseumModel> museumsModelList =
            museums.map((e) => MuseumModel.fromJson(e)).toList();
        print(museumsModelList);
        return museumsModelList;
      }
      return [];
    } on TimeoutException catch (error) {
      //
      return Future.error("Error: TimeoutException");
    } on SocketException catch (error) {
      //
      return Future.error("Error: SocketException");
    } on FormatException catch (error) {
      //
      return Future.error("Error: FormatException");
    } on Error catch (error) {
      print(error);
      return Future.error("Error4");
    }
  }
}
//    print(response.statusCode);
//print(museums);
// print(museumsModelList);
//http://127.0.0.1:8000/API/museum/
//http://127.0.0.1:8000/API/museum/
//http://192.168.18.118:8000/API/museums/