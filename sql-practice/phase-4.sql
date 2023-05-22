-- Give "Red" the cat one of every toy the other cats have

INSERT INTO toys (cat_id, name)
SELECT (SELECT id FROM cats WHERE name = 'Red'), name FROM toys;

-- Query spoiled cats reporting the most spoiled first

SELECT cats.name, COUNT(cat_id) as num_toys FROM toys
    JOIN cats ON (toys.cat_id = cats.id)
    GROUP BY cats.name
    HAVING num_toys >= 2
    ORDER BY num_toys DESC;
