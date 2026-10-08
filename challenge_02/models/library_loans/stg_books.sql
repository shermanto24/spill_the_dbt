select distinct *
from
(
    select 
        *, 
        'Fiction' as genre
    from books_fictional
    union
    select 
        *,
        'Fact' as genre
    from books_factual
) as all_books
where book_id is not null