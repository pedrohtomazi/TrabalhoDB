🏡 1. Rancho
Relaciona-se com:
Funcionarios (1:N)
Animais (Ovelha, Vaca, Porco, Cavalo, Galinha, Cabra) (1:N)
Cochos (1:N)
Plantacao (1:N)
Pasto (1:N)
👷 2. Funcionarios
Relaciona-se com:
Rancho → id_rancho (N:1)
Funcionarios_Animais → id_funcionario (1:N)
🐑🐄🐖🐎🐔🐐 3–8. Animais (Ovelha, Vaca, Porco, Cavalo, Galinha, Cabra)
Todos se relacionam com:
Rancho → rancho_id (N:1)
Funcionarios_Animais → id_animal, tipo_animal (N:N com Funcionarios, via tabela associativa)
Tratamentos → id_animal (1:N)
Controle de Reprodução → id_animal (1:N)
Produção (Leite, Ovos, Carne) (1:N) conforme o tipo
🍽 9. Cochos
Relaciona-se com:
Rancho → rancho_id (N:1)
🌱 10. Plantacao
Relaciona-se com:
Rancho → rancho_id (N:1)
Sementes → id_semente (N:1)
🌾 11. Sementes
Relaciona-se com:
Plantacao → id_semente (1:N)
Exportacao → ultima_semente_vendida (por nome ou ID - depende do modelo)
Mutacao_Genetica → id_semente_filho (1:N)
🚛 12. Exportacao
Relaciona-se com:
Safra → id_safra (N:1)
Vendedores → id_vendedor (N:1)
🌽 13. Safra
Relaciona-se com:
Exportacao → id_safra (1:N)
🧑‍💼 14. Vendedores
Relaciona-se com:
Exportacao → id_vendedor (1:N)
🌱🧬 15. Mutacao_Genetica
Relaciona-se com:
Sementes → id_semente_filho (N:1)
🚜 16. Maquinario
Isolada por enquanto, mas pode ser ligada a:
Funcionários (quem opera)
Atividades de plantio ou colheita
🔁 17. Funcionarios_Animais
Relaciona:
Funcionarios → id_funcionario (N:1)
Animais → id_animal + tipo_animal (N:1)
Tabela de associação (N:N entre funcionários e animais)
💊 18. Medicamentos
Relaciona-se com:
Tratamentos → id_medicamento (1:N)
🏥 19. Tratamentos
Relaciona-se com:
Animais → id_animal (N:1)
Medicamentos → id_medicamento (N:1)
🥛 20. Produção de Leite
Relaciona-se com:
Vaca → id_vaca (N:1)
🥚 21. Produção de Ovos
Relaciona-se com:
Galinha → id_galinha (N:1)
🍖 22. Produção de Carne
Relaciona-se com:
Animais → id_animal (N:1)
Aplicável a vacas, porcos, cabras, etc.
🌿 23. Pasto
Relaciona-se com:
Rancho → rancho_id (N:1)
🐣 24. Controle de Reprodução
Relaciona-se com:
Animais → id_animal (N:1)