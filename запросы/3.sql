--Запрос на выборку сувениров
--по категориям
--и отсортировать по популярности
--от самого непопулярного
--Например
SELECT s.*
FROM souvenirs s
JOIN souvenirscategories sc ON s.idcategory = sc.id
WHERE sc.name IN ('Брелоки', 'Фонарики')
ORDER BY s.rating ASC;
