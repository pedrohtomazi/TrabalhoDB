1. Rancho
id_rancho (PK)
localidade
numero_de_funcionarios

2. Funcionarios
id_funcionario (PK)
id_rancho (FK)
funcao
horario_trabalhado
acesso_ao_bau

3. Ovelha
id_ovelha (PK)
quantidade
tempo_breeding
idade_media
sexo
tempo_coleta
rancho_id (FK)

4. Vaca
id_vaca (PK)
quantidade
tempo_breeding
idade_media
sexo
rancho_id (FK)

5. Porco
id_porco (PK)
quantidade
tempo_breeding
idade_media
sexo
insumo (nullable)
rancho_id (FK)

6. Cavalo
id_cavalo (PK)
quantidade
tempo_breeding
idade_media
sexo
tempo_coleta
rancho_id (FK)

7. Galinha
id_galinha (PK)
quantidade
tempo_breeding
idade_media
sexo
tempo_coleta
rancho_id (FK)

8. Cabra
id_cabra (PK)
quantidade
tempo_breeding
idade_media
sexo
tempo_coleta
rancho_id (FK)

9. Cochos
id_cocho (PK)
comida
agua
ultima_hora_alimentado
rancho_id (FK)
10. Plantacao
id_plantacao (PK)
id_semente (FK)
fertilizante
melhor_data_cultivo
sementes_por_pessoa
rancho_id (FK)

11. Sementes
id_semente (PK)
tipo_semente
quantidade_por_hectar

12. Exportacao
id_exportacao (PK)
id_safra (FK)
ultima_safra_vendida
valor_total_recebido
id_vendedor
ultima_semente_vendida
preco_semente
quantidade_por_hectar

13. Safra
id_safra (PK)
descricao
data_colheita
quantidade

14. Vendedores
id_vendedor (PK)
nome
email
telefone

15. Mutacao_Genetica
id_mutacao (PK)
id_semente_filho (FK)
pais
qualidade

16. Maquinario
id_maquinario (PK)
tipo (colheitadeira, fergunsson)
descricao

17. Funcionarios_Animais
id_funcionario_animal (PK)
id_funcionario (FK)
id_animal (FK)
tipo_animal (ovelha, vaca, porco, cavalo, galinha, cabra)

18. Medicamentos
id_medicamento (PK)
nome
descricao
tipo (vacina, antibiótico, e
tc.)

19. Tratamentos
id_tratamento (PK)
id_animal (FK)
id_medicamento (FK)
data_tratamento

20. Produção de Leite
id_producao (PK)
id_vaca (FK)
quantidade_leite
data_producao

21. Produção de Ovos
id_producao_ovos (PK)
id_galinha (FK)
quantidade_ovos
data_producao

22. Produção de Carne
id_producao_carne (PK)
id_animal (FK)
quantidade_carne
data_abate

23. Pasto
id_pasto (PK)
descricao
quantidade_animais
rancho_id (FK)

24. Controle de Reproduçao
id_reproducao (PK)
id_animal (FK)
data_reproducao
data_parto