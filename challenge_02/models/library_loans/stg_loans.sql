select distinct *
from loans
where 
    loan_id is not null and
    member_id in
    (
        select member_id
        from members
        where membership_tier in ('Bronze', 'Silver', 'Gold')
    ) and
    book_id in
    (
        select distinct book_id
        from books_factual
        where book_id is not null

        union 

        select distinct book_id
        from books_fictional
        where book_id is not null
    )