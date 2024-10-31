--Запрос на выборку сувениров по материалу
-- Например
SELECT s.*
FROM souvenirs s
JOIN souvenirmaterials sm ON s.idmaterial = sm.id
WHERE sm.name = 'алюминий';
