SELECT DISTINCT CONVERT(VARCHAR(512), CONVERT(BIGINT,UStudent.f$nrec)- CONVERT(BIGINT,0x8000000000000000)) AS ID
, COALESCE(CONVERT(VARCHAR(512), CONVERT(BIGINT,UStudent.f$CSTATUS)- CONVERT(BIGINT,0x8000000000000000)),'') AS Status_ID
, COALESCE(Cat_Status.f$NAME,' ') AS Status_Name
FROM T$U_STUDENT UStudent
LEFT OUTER
JOIN t$Catalogs Cat_Status ON Cat_Status.f$NRec = UStudent.f$CSTATUS
