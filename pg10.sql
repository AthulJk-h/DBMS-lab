 select sid from reserves22,boats22 where reserves22.bid=boats22.bid and color='red' union select sid from reserves22,boats22 where reserves22.bid=boats22.bid and color='green';

       SID
----------
        22
        31
        64
        74

SQL> select sname from sailors22 intersect select sname from sailors22,reserves22 where sailors22.sid=reserves22.sid and bid=103;

SNAME
--------------------
Dustin
Horatio
Lubber

SQL> select sname,age from sailors22 where age in (select min(age) from sailors22);

SNAME                       AGE
-------------------- ----------
Zorba                        16

SQL> select s.sname from sailors22 s where not exists ((select b.bid from boats22 b) minus (select r.bid from reserves22 r where r.sid=s.sid));

SNAME
--------------------
Dustin