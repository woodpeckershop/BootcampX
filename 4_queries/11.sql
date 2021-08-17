SELECT count(assignments.*), day, sum(assignments.duration)
from assignments
group by day
order by day