SELECT
    C_CITY,
    S_CITY,
    toYear(LO_ORDERDATE) AS year,
    sum(LO_REVENUE) AS sum_LO_REVENUE
FROM {{ ref('lineorder_flat') }}
WHERE (C_CITY = 'UNITED KI1' OR C_CITY = 'UNITED KI5') 
AND (S_CITY = 'UNITED KI1' OR S_CITY = 'UNITED KI5') 
AND year >= 1992 AND year <= 1997
GROUP BY
    C_CITY,
    S_CITY,
    year
ORDER BY
    year ASC,
    sum_LO_REVENUE DESC
