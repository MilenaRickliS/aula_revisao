import 'dart:io';

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

class CarrinhoDeCompras {
  List<Produto> itens = [];

  // Adicionar item ao carrinho
  void adicionarProduto(Produto produto) {
    itens.add(produto);
    print("${produto.nome} foi adicionado ao carrinho.");
  }

  // Remover item do carrinho
  void removerProduto(String nomeProduto) {
    itens.removeWhere((item) => item.nome == nomeProduto);
    print("$nomeProduto foi removido do carrinho.");
  }

  // Listar todos os itens do carrinho
  void listarItens() {
    if (itens.isEmpty) {
      print("O carrinho está vazio.");
    } else {
      print("Itens no carrinho:");
      for (var item in itens) {
        print("${item.nome} - R\$ ${item.preco}");
      }
    }
  }

  // Calcular o total da compra
  double calcularTotal() {
    double total = 0;
    for (var item in itens) {
      total += item.preco;
    }
    return total;
  }
}

void main() {
  CarrinhoDeCompras carrinho = CarrinhoDeCompras();

  // Produtos disponíveis
  List<Produto> produtosDisponiveis = [
    Produto('Camiseta', 59.90),
    Produto('Calça Jeans', 129.90),
    Produto('Tênis', 199.90),
    Produto('Boné', 39.90),
  ];

  while (true) {
    print("\n--- Menu ---");
    print("1. Adicionar produto ao carrinho");
    print("2. Remover produto do carrinho");
    print("3. Listar itens no carrinho");
    print("4. Calcular total");
    print("5. Sair");
    print("Escolha uma opção: ");
    
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        // Mostrar produtos disponíveis
        print("\n--- Produtos Disponíveis ---");
        for (int i = 0; i < produtosDisponiveis.length; i++) {
          print("${i + 1}. ${produtosDisponiveis[i].nome} - R\$ ${produtosDisponiveis[i].preco}");
        }
        
        print("Escolha o número do produto para adicionar ao carrinho: ");
        int escolha = int.parse(stdin.readLineSync()!);
        
        if (escolha >= 1 && escolha <= produtosDisponiveis.length) {
          carrinho.adicionarProduto(produtosDisponiveis[escolha - 1]);
        } else {
          print("Opção inválida.");
        }
        break;

      case 2:
        // Remover produto
        print("\nDigite o nome do produto para remover do carrinho: ");
        String nomeProduto = stdin.readLineSync()!;
        carrinho.removerProduto(nomeProduto);
        break;

      case 3:
        // Listar itens no carrinho
        carrinho.listarItens();
        break;

      case 4:
        // Calcular total
        double total = carrinho.calcularTotal();
        print("\nTotal da compra: R\$ $total");
        break;

      case 5:
        // Sair
        print("Saindo...");
        return;

      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}

