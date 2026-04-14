// 14-agregacao.dart  
// Agregação e Composição

import 'dart:convert';

class Dependente {
  String nome;

  Dependente(this.nome);

  Map toJson() => {
        'nome': nome,
      };
}

class Funcionario {
  String nome;
  List<Dependente> dependentes;

  Funcionario(this.nome, this.dependentes);

  Map toJson() => {
        'nome': nome,
        'dependentes': dependentes,
      };
}

class EquipeProjeto {
  String nomeProjeto;
  List<Funcionario> funcionarios;

  EquipeProjeto(this.nomeProjeto, this.funcionarios);

  Map toJson() => {
        'nomeProjeto': nomeProjeto,
        'funcionarios': funcionarios,
      };
}

main() {
  // Dependentes
  Dependente d1 = Dependente("Artur");
  Dependente d2 = Dependente("Amaral");
  Dependente d3 = Dependente("Adão");
  Dependente d4 = Dependente("Anderson");

  Dependente d5 = Dependente("Ana");
  Dependente d6 = Dependente("Antônia");
  Dependente d7 = Dependente("Aline");
  Dependente d8 = Dependente("Alice");

  // Funcionários
  Funcionario f1 = Funcionario("Augusto", [d1, d2, d3, d4]);
  Funcionario f2 = Funcionario("Adriana", [d5, d6, d7, d8]);

  // Lista de funcionários
  List<Funcionario> listaFuncionarios = [f1, f2];

  // Equipe do projeto
  EquipeProjeto equipe =
      EquipeProjeto("Sistema Financeiro", listaFuncionarios);

  // Converter para JSON
  String jsonEquipe = jsonEncode(equipe);

  print(jsonEquipe);
}