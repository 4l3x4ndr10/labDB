--Запрос на выборку поставок сувениров за промежуток времени и отсортировать по статусу

--Например
SELECT sp.*, ps.name AS status_name
FROM souvenirprocurements sp
JOIN procurementstatuses ps ON sp.idstatus = ps.id
WHERE sp.data BETWEEN '2024-01-01' AND '2024-10-31'
ORDER BY ps.name;
