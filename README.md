# API de Extração de diamantes

Esta API consiste em processar uma expressão com diamantes (`<>`) e areias (`.`). O objetivo é extrair todos os diamantes e areias da expressão e contar quantos diamantes foram extraídos.

## Instalação e Execução

### Passo 1: Clone o repositório

Use o comando abaixo para clonar o repositório:

```bash
git clone https://github.com/kessystaub/diamond-extractor.git
```

### Passo 2: Instale as dependências

Navegue até o diretório do projeto e execute o seguinte comando para instalar as dependências:

```bash
bundle install
```

### Passo 3: Configure o banco de dados

Crie e migre o banco de dados com os comandos:

```bash
rails db:create db:migrate
```

### Passo 4: Inicie o servidor

Inicie o servidor Rails:

```bash
rails server
```

O servidor estará disponível em http://localhost:3000.

## Endpoints

### 1. Extrair diamantes

- **Método**: POST  
- **URL**: `http://localhost:3000/extract`  
- **Descrição**: Extrai o número de diamantes de uma expressão. 
- **Requisitos**:
  - O parâmetro deve se chamar `expression` e conter a expressão com diamantes que deseja extrair.

## Exemplo

### Entrada:
```plaintext
<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>
```

### Saída:
```plaintext
Quantidade de diamantes extraídos: 11
```
