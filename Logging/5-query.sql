SELECT t.id
     , t.usager
     , t.action
     , t.tablename
     , t.data_before
     , t.data_after
     , t.moment
FROM public.journal_evenements t
ORDER BY t.id