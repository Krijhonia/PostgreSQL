SELECT
    s.student_id,
    s.name,
    sp.address,
    sp.age,
    sp.phone
FROM students s 
JOIN student_profiles sp 
ON s.student_id = sp.student_id    