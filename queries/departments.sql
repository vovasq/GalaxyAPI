SELECT DISTINCT CONVERT(VARCHAR(512), CONVERT(BIGINT, CATALOGS.f$NREC)+9223372036854775808) AS ID
, CATALOGS.f$CODE AS CODE
, CATALOGS.f$NAME AS NAME
, CATALOGS.f$CATDATA AS CATDATA
FROM t$CATALOGS CAT_MAIN
LEFT OUTER
JOIN t$CATALOGS CATALOGS ON
 CATALOGS.f$MAINLINK=CAT_MAIN.f$NREC AND CATALOGS.f$LPR = 0 AND (UPPER(CATALOGS.f$SDOPINF)='Ф' OR UPPER(CATALOGS.f$SDOPINF)='ДК')
WHERE
 (
-11 = CAT_MAIN.f$SYSCODE
)
