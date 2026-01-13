# 📚 Banco de Dados — Atividades (MySQL)

Este repositório contém scripts **.SQL** desenvolvidos durante as atividades práticas de Banco de Dados, com foco em:
- Criação de banco e tabelas
- Inserção de registros
- Consultas com `SELECT` e filtros
- Atualização de dados com `UPDATE`
- Relacionamentos com **Foreign Key**
- Consultas com `LIKE`, `BETWEEN` e `INNER JOIN`

---

## 🧰 Tecnologias e Conceitos
- **MySQL**
- **DDL** (CREATE DATABASE / CREATE TABLE / ALTER TABLE)
- **DML** (INSERT / SELECT / UPDATE)
- **Relacionamentos** (FK)
- **Consultas** (WHERE, LIKE, BETWEEN, JOIN)

---

## ✅ Atividades

### ✅ Atividade 01 — RH (Colaboradores)
📌 Objetivo: Criar um banco para um serviço de RH, armazenando dados de colaboradores.

**Requisitos aplicados:**
- Banco: `db_colaboradores`
- Tabela: `tb_colaboradores`
- Inserção de 5 registros
- Consultas:
  - salário **maior** que 2000
  - salário **menor** que 2000
- Atualização (`UPDATE`) de um registro

📄 Script: `atividade01_rh_colaboradores.sql`

---

### ✅ Atividade 02 — E-commerce (Produtos)
📌 Objetivo: Criar um banco para um e-commerce, armazenando dados de produtos.

**Requisitos aplicados:**
- Banco: `db_mundo_rosinha_kids`
- Tabela: `tb_produtos`
- Inserção de 8 registros
- Consultas:
  - preço **maior** que 500
  - preço **menor** que 500
- Atualização (`UPDATE`) de um registro

📄 Script: `atividade02_ecommerce_produtos.sql`

---

### ✅ Atividade 03 — Escola (Estudantes)
📌 Objetivo: Criar um banco para uma escola, armazenando dados de estudantes.

**Requisitos aplicados:**
- Banco: `db_escola`
- Tabela: `tb_estudantes`
- Inserção de 8 registros
- Consultas:
  - nota **maior** que 7.0
  - nota **menor** que 7.0
- Atualização (`UPDATE`) de um registro

📄 Script: `atividade03_escola_estudantes.sql`

---

## 🎮 Atividade 01 — Game Online (Relacionamento)
📌 Objetivo: Criar um banco para um game online com **duas tabelas relacionadas**.

**Estrutura:**
- Banco: `db_generation_game_online`
- Tabelas:
  - `tb_classes` (classes dos personagens)
  - `tb_personagens` (personagens com FK para classe)

**Requisitos aplicados:**
- Inserção:
  - 5 registros em `tb_classes`
  - 8 registros em `tb_personagens`
- Consultas:
  - ataque > 2000
  - defesa entre 1000 e 2000 (`BETWEEN`)
  - nomes com letra **C** (`LIKE`)
  - `INNER JOIN` personagens + classes
  - `INNER JOIN` filtrando por classe específica (ex.: `Psíquico`)

📄 Script: `atividade_game_online.sql`

---

## 🍕 Atividade 02 — Pizzaria (Relacionamento)
📌 Objetivo: Criar um banco para uma pizzaria com **duas tabelas relacionadas**.

**Estrutura:**
- Banco: `db_pizzaria_legal`
- Tabelas:
  - `tb_categorias`
  - `tb_pizzas` (com FK para categoria)

**Requisitos aplicados:**
- Inserção:
  - 5 registros em `tb_categorias`
  - 8+ registros em `tb_pizzas`
- Consultas:
  - pizzas com valor > 45
  - pizzas entre 50 e 100 (`BETWEEN`)
  - pizzas com letra **M** no nome (`LIKE`)
  - `INNER JOIN` pizzas + categorias
  - `INNER JOIN` filtrando por categoria específica

📄 Script: `atividade_pizzaria.sql`

⚠️ Observação: Foi utilizado `ALTER TABLE` para ajustar o nome do campo (de `sabor` para `nome`) na tabela `tb_pizzas`.

---

## 💊 Atividade 03 — Farmácia (Relacionamento)
📌 Objetivo: Criar um banco para uma farmácia com **duas tabelas relacionadas**.

**Estrutura:**
- Banco: `db_farmacia_bem_estar`
- Tabelas:
  - `tb_categorias`
  - `tb_produtos` (com FK para categoria)

**Requisitos aplicados:**
- Inserção:
  - 5 registros em `tb_categorias`
  - 8 registros em `tb_produtos`
- Consultas:
  - produtos > 50
  - produtos entre 5 e 60 (`BETWEEN`)
  - produtos com letra **C** no nome (`LIKE`)
  - `INNER JOIN` produtos + categorias
  - `INNER JOIN` filtrando por categoria específica (ex.: Higiene Pessoal)

📄 Script: `atividade_farmacia.sql`

---

## ▶️ Como executar os scripts

1. Abra o **MySQL Workbench** (ou outro client MySQL)
2. Copie o conteúdo do arquivo `.sql`
3. Execute o script completo (ele já cria o banco, tabelas e inserts)
4. Rode os `SELECT` para validar os resultados

---

## 👩‍💻 Autora
**Tayene Ramires**  
Estudante de Sistemas de Informação | Full Stack em formação  
JavaScript • TypeScript • Node.js • NestJS • HTML • CSS • SQL •

---

