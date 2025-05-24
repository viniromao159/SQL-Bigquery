WITH tb_freq_abs AS(

SELECT 
  descProduto,
  COUNT(idTransacao) as FreqAbs

FROM `aerobic-gantry-450916-f4.cursoestatisticateo.points`

GROUP BY descProduto),

tb_freq_abs_cum AS (SELECT
  *,
  sum(FreqAbs) OVER (ORDER BY descProduto) AS FreqAbsAcum,
  1.0 * FreqAbs / (SELECT sum(FreqAbs) FROM tb_freq_abs) AS FreqRelativa

FROM tb_freq_abs)



SELECT
  *,
  sum(FreqRelativa) OVER (ORDER BY descProduto) AS FreqRelativaAcum

FROM tb_freq_abs_cum

