SELECT COUNT(*) FROM `paidregistration` WHERE `eventName1` LIKE 'APP%' ORDER BY `eventName1` ASC
SELECT COUNT(*) FROM `paidregistration` WHERE `eventName1` LIKE 'Cat%' ORDER BY `eventName1` ASC
SELECT COUNT(*) FROM `paidregistration` WHERE `eventName1` LIKE 'Sta%' ORDER BY `eventName1` ASC
SELECT COUNT(*) FROM `paidregistration` WHERE `eventName1` LIKE 'Ele%' ORDER BY `eventName1` ASC

SELECT COUNT(*) FROM `paidregistration` WHERE `eventName1` LIKE 'Ide%' OR `eventName2` LIKE 'Ide%' OR `eventName3` LIKE 'Ide%'
SELECT COUNT(*) FROM `paidregistration` WHERE `eventName1` LIKE 'On%' OR `eventName2` LIKE 'On%' OR `eventName3` LIKE 'On%'
SELECT COUNT(*) FROM `paidregistration` WHERE `eventName1` LIKE 'cir%' OR `eventName2` LIKE 'cir%' OR `eventName2` LIKE 'cir%'
SELECT COUNT(*) FROM `paidregistration` WHERE `eventName1` LIKE 'cod%' OR `eventName2` LIKE 'cod%' OR `eventName2` LIKE 'cod%'

SELECT `users`.`name`,`users`.`email`,`users`.`password` FROM `users` WHERE `email` IN (SELECT DISTINCT `email` FROM `paidregistration` WHERE `eventName1` LIKE 'TR%' OR `eventName2` LIKE 'TR%' OR `eventName3`LIKE 'TR%')

