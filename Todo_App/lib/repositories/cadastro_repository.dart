import 'dart:convert';

import 'package:Todo_App/models/endereco_model.dart';
import 'package:Todo_App/repositories/interfaces/i_cadastro_repository.dart';
import 'package:http/http.dart';

class CadastroRepository implements ICadastroRepository {
  final Client Function() _getClient;

  CadastroRepository(this._getClient);

  Future<EnderecoModel> pesquisarCep(String cep) async {
    final httpClient = _getClient();
    try {
      final url = 'viacep.com.br/ws/$cep/json/';
      final resposta = await httpClient.get(url).timeout(Duration(seconds: 5));
      final respostaJson = jsonDecode(resposta.body);
      var resultado = new EnderecoModel.fromJson(respostaJson);

      return resultado;
      // TODO: Criar um catch que captura e trata exceptions personalizadas
    } finally {
      httpClient.close();
    }
  }
}
