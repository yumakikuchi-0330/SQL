-- SELECT文: 全データ取得
SELECT * FROM employee;

-- 特定の列を取得
SELECT name, sal FROM employee;

-- WHERE句: 条件付き取得
SELECT * FROM employee WHERE sal >= 500000;

-- ORDER BY句: 並び替え
SELECT * FROM employee ORDER BY sal DESC;

-- INSERT文: データの追加
INSERT INTO employee (name, age, job, sal)
VALUES ('佐藤', 35, '営業', 550000);
SELECT * FROM employee;

-- UPDATE文: データの更新
UPDATE employee SET sal = 1000000 WHERE name = '松田';
SELECT * FROM employee;

-- DELETE文: データの削除
UPDATE project SET employee_id = NULL WHERE employee_id = 3;
DELETE FROM employee WHERE name = '北條';
SELECT * FROM employee;

-- COUNT関数: データ件数の取得
SELECT COUNT(*) FROM employee;

-- DISTINCT: 重複の排除job
SELECT DISTINCT job FROM employee;

-- GROUP BY: データのグループ化
SELECT job, COUNT(*) AS employee_count
FROM employee
GROUP BY job;
