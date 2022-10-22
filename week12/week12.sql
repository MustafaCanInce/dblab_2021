select *
from proteins;

explain select *
from proteins 
where pid like "5HT2C_HUMA%";

explain select *
from proteins
where accession = "Q9UBA6";

create unique index idx1 using btree on proteins(pid);
alter table proteins add constraint acc_pk primary key (accession);

alter table proteins drop index idx1;
alter table proteins drop primary key;