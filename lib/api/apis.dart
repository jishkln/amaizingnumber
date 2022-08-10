import 'dart:convert';

import 'package:amaigingnumbers/apimodel/numbermodelclass.dart';
import 'package:http/http.dart' as http;

Future<NumberFactModel> getNumerResult({required int number}) async {
  final _dataReturn = await http.get(
    Uri.parse('http://numbersapi.com/$number?json'),
  );
  final _jsonBody = jsonDecode(_dataReturn.body) as Map<String, dynamic>;
  final _numberData = NumberFactModel.fromJson(_jsonBody);
  return _numberData;
}
