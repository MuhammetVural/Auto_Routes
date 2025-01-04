

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:first_project/data/models/message_model.dart';

class MessageService {

  final baseUrl = 'https://jsonplaceholder.typicode.com';
  final Dio _dio;

  MessageService([Dio? dio]) : _dio = dio ?? Dio();

  Future<List<MessageModel>> fetchMessages()async{
    try {
      final response = await _dio.get('$baseUrl/posts');
      if (response.statusCode == 200) {

        final data = response.data as List;

        return data.map((json) => MessageModel.fromJson(json)).toList();
      }
      else{
        throw Exception('Cannot ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }
}