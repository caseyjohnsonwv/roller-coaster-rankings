select
  cast(my.rank as int) as My_Rank,
  my.coaster as Coaster,
  my.park as Park,
  th.enthusiast_rank_reduced as Enthusiast_Rank_Reduced,
  th.enthusiast_rank_reduced - cast(my.rank as int) as '"Am I Crazy?" Score'
from
  my_top_25 as my
  inner join (
    select
      coaster,
      park,
      enthusiast_rank,
      iif(
        enthusiast_rank is null,
        null,
        count(*) over (
          order by
            enthusiast_rank rows unbounded preceding
        ) - 5
      ) as enthusiast_rank_reduced
    from
      (
        select
          cr.coaster,
          cr.park,
          cast(cb.rank as int) as enthusiast_rank
        from
          credits_cleaned as cr
          left join coasterbot_21_cleaned as cb on cr.coaster = cb.name
          and cb.`Theme Park` = cr.park
      )
  ) as th on my.coaster = th.coaster
  and my.park = th.park
order by
  my_rank
