SELECT COALESCE(CONVERT(VARCHAR(512), CONVERT(BIGINT,BUP.f$Nrec)- CONVERT(BIGINT,0x8000000000000000)),'') AS ID
, COALESCE(CONVERT(VARCHAR(512), CONVERT(BIGINT,sStatus.f$Nrec)- CONVERT(BIGINT,0x8000000000000000)),'') AS Status_ID
,sStatus.f$Name AS Name
FROM T$U_CURRICULUM BUP
LEFT OUTER
JOIN T$KATNOTES sStatus ON sSTatus.F$NREC = BUP.F$CNOTE
WHERE BUP.f$wType=1
