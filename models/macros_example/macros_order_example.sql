-- SELECT *,
--     CASE WHEN Status='returned' THEN UPPER(Status)
--     ELSE Status
--     END AS modified_status
-- FROM raw.jaffle_shop.orders

-- SELECT *,
-- {{ status_case_modification('Status') }} AS status_mod
-- FROM raw.jaffle_shop.orders

