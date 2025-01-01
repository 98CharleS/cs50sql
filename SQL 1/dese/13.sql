SELECT "name", "pupils", "exemplary"
FROM "districts"
JOIN "expenditures" ON expenditures.district_id = districts.id
JOIN "staff_evaluations" ON staff_evaluations.district_id = districts.id
WHERE "type" = 'Public School District'
ORDER BY "pupils" DESC, "exemplary" DESC
