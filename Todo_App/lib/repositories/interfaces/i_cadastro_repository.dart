import 'package:Todo_App/models/endereco_model.dart';

abstract class ICadastroRepository {
  Future<EnderecoModel> pesquisarCep(String cep);
}
