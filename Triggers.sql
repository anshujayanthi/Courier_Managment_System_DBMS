--Triggers

--out for delivery
delimiter //
CREATE TRIGGER OFD BEFORE UPDATE ON package
FOR EACH ROW
BEGIN
if new.empid <> old.empid then
IF NEW.empid is not null THEN
SET NEW.tstatus = 'OUT FOR DELIVERY';
END IF;
end if;
END;//
delimiter ;

--after delivery
delimiter //
CREATE TRIGGER delivered BEFORE UPDATE ON package
FOR EACH ROW
BEGIN
if new.actualdelivery <> old.actualdelivery then
IF NEW.actualdelivery is not null THEN
SET NEW.tstatus = 'DELIVERED';
END IF;
end if;
END;//
delimiter ;