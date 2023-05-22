-- Using subqueries, find the names of the cats whose owners are either George Beatty or Melynda Abshire

SELECT DISTINCT cats.name
FROM cats
WHERE id IN (
    SELECT cat_id FROM cat_owners WHERE owner_id = (
        SELECT id FROM owners WHERE first_name = 'George' AND last_name = 'Beatty'
    )
) OR id IN (
    SELECT cat_id FROM cat_owners WHERE owner_id = (
        SELECT id FROM owners WHERE first_name = 'Melynda' AND last_name = 'Abshire'
    )
);
