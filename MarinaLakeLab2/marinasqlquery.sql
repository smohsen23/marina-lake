select* from dock;
select * from lease;
select * from slip;

with x as (select SlipID  from lease)
select distinct  s.ID,s.Length ,s.Width, d.Name   from Dock d, Slip s ,x t where t.SlipID!=s.ID and s.DockID= d.ID     
