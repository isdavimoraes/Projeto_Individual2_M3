--1 Qual empresa utiliza o maior número de tecnologias na última pesquisa (2/2022)?

SELECT nome_empresa, SUM(num_tecnologias) AS total_tecnologias
FROM (
  SELECT e.nome_empresa, COUNT(DISTINCT rt.id_tecnologia) AS num_tecnologias, MONTH(r.data_relatorio) AS mes
  FROM tb_empresa e
  JOIN tb_relatorio r ON e.id_empresa = r.id_empresa
  JOIN tb_relatorio_tecnologia rt ON r.id_relatorio = rt.id_relatorio
  JOIN tb_tecnologia t ON rt.id_tecnologia = t.id_tecnologia
  WHERE MONTH(r.data_relatorio) >= 6
  GROUP BY e.nome_empresa, MONTH(r.data_relatorio)
) t
GROUP BY nome_empresa
ORDER BY total_tecnologias DESC

2. Qual empresa utilizava o menor número de tecnologias na pesquisa
anterior (1/2022)?
SELECT nome_empresa, SUM(num_tecnologias) AS total_tecnologias
FROM (
  SELECT e.nome_empresa, COUNT(DISTINCT rt.id_tecnologia) AS num_tecnologias, MONTH(r.data_relatorio) AS mes
  FROM tb_empresa e
  JOIN tb_relatorio r ON e.id_empresa = r.id_empresa
  JOIN tb_relatorio_tecnologia rt ON r.id_relatorio = rt.id_relatorio
  JOIN tb_tecnologia t ON rt.id_tecnologia = t.id_tecnologia
  WHERE MONTH(r.data_relatorio) <= 6
  GROUP BY e.nome_empresa, MONTH(r.data_relatorio)
) t
GROUP BY nome_empresa
ORDER BY total_tecnologias DESC

3. --Quantas empresas utilizam tecnologias da área de “Dados” atualmente?
SELECT COUNT(DISTINCT id_empresa) AS num_empresas
FROM tb_relatorio r
JOIN tb_relatorio_tecnologia rt ON r.id_relatorio = rt.id_relatorio
JOIN tb_tecnologia t ON rt.id_tecnologia = t.id_tecnologia
WHERE t.area = 'dados'

4. Quantas empresas utilizam tecnologias que não são da área de
“Dados” atualmente?
SELECT COUNT(DISTINCT id_empresa) AS num_empresas
FROM tb_relatorio r
JOIN tb_relatorio_tecnologia rt ON r.id_relatorio = rt.id_relatorio
JOIN tb_tecnologia t ON rt.id_tecnologia = t.id_tecnologia
WHERE t.area != 'dados'