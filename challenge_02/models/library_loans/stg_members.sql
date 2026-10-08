select distinct *
from members
where
    member_id is not null and
    membership_tier in ('Bronze', 'Silver', 'Gold')