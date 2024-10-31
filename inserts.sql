-- Заполнение таблицы Providers
INSERT INTO Providers (ID, Name, Email, ContactPerson, Comments)
VALUES
(1, 'Global Souvenirs Ltd.', 'contact@globalsouvenirs.com', 'John Doe', 'Main supplier for Europe.'),
(2, 'Creative Gifts Inc.', 'sales@creativegifts.com', 'Jane Smith', 'Specializes in custom orders.'),
(3, 'Artisan Works', 'info@artisanworks.com', 'Emily Johnson', 'Provides handcrafted items.');

-- Заполнение таблицы ProcurementStatuses
INSERT INTO ProcurementStatuses (ID, Name)
VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Received'),
(4, 'Cancelled');

-- Заполнение таблицы SouvenirProcurements
INSERT INTO SouvenirProcurements (ID, IdProvider, Data, IdStatus)
VALUES
(1, 1, '2024-01-15', 1),
(2, 2, '2024-02-10', 2),
(3, 3, '2024-03-05', 3),
(4, 1, '2024-04-20', 4);

-- Заполнение таблицы ProcurementSouvenirs
INSERT INTO ProcurementSouvenirs (ID, IdSouvenir, IdProcurement, Amount, Price)
VALUES
(1, 8096, 1, 100, 15.00),
(2, 8097, 1, 50, 25.00),
(3, 8098, 2, 30, 20.00),
(4, 8099, 3, 200, 10.50),
(5, 8100, 4, 150, 12.75);

-- Заполнение таблицы SouvenirStores
INSERT INTO SouvenirStores (ID, IdSouvenir, IdProcurement, Amount, Comments)
VALUES
(1, 8096, 1, 90, 'Initial stock received.'),
(2, 8097, 1, 45, 'Some items were damaged.'),
(3, 8098, 2, 30, 'Delivered on time.'),
(4, 8099, 3, 190, 'Received with discount.'),
(5, 8100, 4, 140, 'Remaining stock after promotion.');
