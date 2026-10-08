SELECT
    B.book_name,
    M.member_name,
    M.discount_rate/100 as discount_applied,
    SUM(L.late_fee * (M.discount_rate/100)) as fee_applied
FROM {{ ref('stg_members') }} AS M 
    INNER JOIN {{ ref('stg_loans') }} AS L ON M.member_id = L.member_id
    left join {{ ref('stg_books') }} as B on L.book_id = B.book_id
GROUP BY 1,2,3