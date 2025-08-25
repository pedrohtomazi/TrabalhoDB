1. Rancho
id_rancho INT PRIMARY KEY
localidade VARCHAR(100)
numero_de_funcionarios INT

2. Funcionarios
id_funcionario INT PRIMARY KEY
id_rancho INT REFERENCES Rancho(id_rancho)
funcao VARCHAR(50)
horario_trabalhado TIME
acesso_ao_bau BOOLEAN

3. Ovelha
id_ovelha INT PRIMARY KEY
quantidade INT
tempo_breeding INTERVAL
idade_media DECIMAL(3,1)
sexo CHAR(1) -- M ou F
tempo_coleta INTERVAL
rancho_id INT REFERENCES Rancho(id_rancho)

4. Vaca
id_vaca INT PRIMARY KEY
quantidade INT
tempo_breeding INTERVAL
idade_media DECIMAL(3,1)
sexo CHAR(1)
rancho_id INT REFERENCES Rancho(id_rancho)

5. Porco
id_porco INT PRIMARY KEY
quantidade INT
tempo_breeding INTERVAL
idade_media DECIMAL(3,1)
sexo CHAR(1)
insumo VARCHAR(100) NULL
rancho_id INT REFERENCES Rancho(id_rancho)

6. Cavalo
id_cavalo INT PRIMARY KEY
quantidade INT
tempo_breeding INTERVAL
idade_media DECIMAL(3,1)
sexo CHAR(1)
tempo_coleta INTERVAL
rancho_id INT REFERENCES Rancho(id_rancho)

7. Galinha
id_galinha INT PRIMARY KEY
quantidade INT
tempo_breeding INTERVAL
idade_media DECIMAL(3,1)
sexo CHAR(1)
tempo_coleta INTERVAL
rancho_id INT REFERENCES Rancho(id_rancho)

8. Cabra
id_cabra INT PRIMARY KEY
quantidade INT
tempo_breeding INTERVAL
idade_media DECIMAL(3,1)
sexo CHAR(1)
tempo_coleta INTERVAL
rancho_id INT REFERENCES Rancho(id_rancho)

9. Cochos
id_cocho INT PRIMARY KEY
comida VARCHAR(100)
agua DECIMAL(5,2) -- litros
ultima_hora_alimentado TIMESTAMP
rancho_id INT REFERENCES Rancho(id_rancho)

10. Plantacao
id_plantacao INT PRIMARY KEY
id_semente INT REFERENCES Sementes(id_semente)
fertilizante VARCHAR(100)
melhor_data_cultivo VARCHAR(20) -- estação do ano
sementes_por_pessoa INT
rancho_id INT REFERENCES Rancho(id_rancho)

11. Sementes
id_semente INT PRIMARY KEY
tipo_semente VARCHAR(100)
quantidade_por_hectar DECIMAL(6,2)

12. Exportacao
id_exportacao INT PRIMARY KEY
id_safra INT REFERENCES Safra(id_safra)
ultima_safra_vendida VARCHAR(100)
valor_total_recebido DECIMAL(10,2)
id_vendedor INT REFERENCES Vendedores(id_vendedor)
ultima_semente_vendida VARCHAR(100)
preco_semente DECIMAL(6,2)
quantidade_por_hectar DECIMAL(6,2)

13. Safra
id_safra INT PRIMARY KEY
descricao TEXT
data_colheita DATE
quantidade DECIMAL(10,2)

14. Vendedores
id_vendedor INT PRIMARY KEY
nome VARCHAR(100)
email VARCHAR(100)
telefone VARCHAR(20)

15. Mutacao_Genetica
id_mutacao INT PRIMARY KEY
id_semente_filho INT REFERENCES Sementes(id_semente)
pais VARCHAR(100)
qualidade VARCHAR(50)

16. Maquinario
id_maquinario INT PRIMARY KEY
tipo VARCHAR(50) -- ex: colheitadeira, fergusson
descricao TEXT

17. Funcionarios_Animais
id_funcionario_animal INT PRIMARY KEY
id_funcionario INT REFERENCES Funcionarios(id_funcionario)
id_animal INT -- depende do tipo_animal
tipo_animal VARCHAR(20) -- ex: ovelha, vaca

18. Medicamentos
id_medicamento INT PRIMARY KEY
nome VARCHAR(100)
descricao TEXT
tipo VARCHAR(50) -- vacina, antibiótico, etc.

19. Tratamentos
id_tratamento INT PRIMARY KEY
id_animal INT -- considerar flexível para animais de diferentes tabelas
id_medicamento INT REFERENCES Medicamentos(id_medicamento)
data_tratamento DATE

20. Produção de Leite
id_producao INT PRIMARY KEY
id_vaca INT REFERENCES Vaca(id_vaca)
quantidade_leite DECIMAL(6,2)
data_producao DATE

21. Produção de Ovos
id_producao_ovos INT PRIMARY KEY
id_galinha INT REFERENCES Galinha(id_galinha)
quantidade_ovos INT
data_producao DATE

22. Produção de Carne
id_producao_carne INT PRIMARY KEY
id_animal INT -- pode ser porco, vaca, etc.
quantidade_carne DECIMAL(6,2)
data_abate DATE

23. Pasto
id_pasto INT PRIMARY KEY
descricao TEXT
quantidade_animais INT
rancho_id INT REFERENCES Rancho(id_rancho)

24. Controle de Reproduçao
id_reproducao INT PRIMARY KEY
id_animal INT -- animal reprodutor
data_reproducao DATE
data_parto DATE