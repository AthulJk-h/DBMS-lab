SQL> set serverout on
SQL>  DECLARE
  2
  3     c_id empl.id%type;
  4
  5      c_name empl.name%type;
  6
  7     c_addr empl.address%type;
  8
  9      CURSOR c_empl is
 10
 11    SELECT id, name, address FROM empl;
 12
 13     BEGIN
 14
 15     OPEN c_empl;
 16
 17     LOOP
 18
 19     FETCH c_empl into c_id, c_name, c_addr;
 20
 21     EXIT WHEN c_empl%notfound;
 22
 23     dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
 24
 25     END LOOP;
 26
 27     CLOSE c_empl;
 28
 29    END;
 30
 31     /
1 Ramesh Allahabad
2 Suresh Kanpur
3 Mahesh Ghaziabad
4 Chandan Noida
5 Alex Paris
6 Sunita Delhi

PL/SQL procedure successfully completed.
