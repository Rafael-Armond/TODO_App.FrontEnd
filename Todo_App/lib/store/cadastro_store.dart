import 'package:Todo_App/models/endereco_model.dart';
import 'package:Todo_App/repositories/interfaces/i_cadastro_repository.dart';
import 'package:mobx/mobx.dart';
part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStore with _$CadastroStore;

abstract class _CadastroStore with Store {
  final ICadastroRepository _cadastroRepository;

  _CadastroStore(this._cadastroRepository);

  Future<EnderecoModel> pesquisarCep(String cep) async {
    return await _cadastroRepository.pesquisarCep(cep);
  }
}
