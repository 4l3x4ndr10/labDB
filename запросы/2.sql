--Запрос на выборку поставок сувениров за промежуток времени
--Например
SELECT
    sp.ID AS ProcurementID,
    sp.Data AS ProcurementDate,
    p.Name AS ProviderName,
    ps.Name AS StatusName,
    s.ID AS SouvenirID,
    s.Name AS SouvenirName,
    s.ShortName AS SouvenirShortName,
    psou.Amount,
    psou.Price
FROM
    souvenirprocurements sp
    JOIN providers p ON sp.IdProvider = p.ID
    JOIN procurementstatuses ps ON sp.IdStatus = ps.ID
    JOIN procurementsouvenirs psou ON sp.ID = psou.IdProcurement
    JOIN souvenirs s ON psou.IdSouvenir = s.ID
WHERE
    sp.Data BETWEEN '2024-01-01' AND '2024-12-31';
