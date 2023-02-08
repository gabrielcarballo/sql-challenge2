SELECT
    FORMAT(MIN(valor_plano), 2) AS faturamento_minimo,
    FORMAT(MAX(valor_plano), 2) AS faturamento_maximo,
    FORMAT(AVG(A.valor_plano), 2) AS faturamento_medio,
    FORMAT(SUM(A.valor_plano), 2) AS faturamento_total
FROM `SpotifyClone`.planos A
    JOIN `SpotifyClone`.usuario B ON A.plano_id = B.plano_id;